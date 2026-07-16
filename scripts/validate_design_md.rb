require "yaml"

SECTION_ORDER = [
  "Overview",
  "Colors",
  "Typography",
  "Layout",
  "Elevation & Depth",
  "Shapes",
  "Components",
  "Do's and Don'ts"
].freeze

DIMENSION = /\A-?(?:\d+(?:\.\d+)?|\.\d+)(?:px|em|rem)\z/
HEX_COLOR = /\A#[0-9a-fA-F]{3,8}\z/

def fail_with(file, message)
  warn "#{file}: #{message}"
  false
end

def resolve_path(root, path)
  path.split(".").reduce(root) do |value, key|
    return nil unless value.is_a?(Hash) && value.key?(key)
    value[key]
  end
end

def string_values(value)
  case value
  when Hash
    value.values.flat_map { |child| string_values(child) }
  when Array
    value.flat_map { |child| string_values(child) }
  when String
    [value]
  else
    []
  end
end

all_valid = true

ARGV.each do |file|
  text = File.read(file)
  lines = text.lines
  valid = true

  unless lines.first&.chomp == "---"
    valid = fail_with(file, "frontmatter must begin with an exact --- line")
    all_valid = false
    next
  end

  closing = lines[1..]&.index { |line| line.chomp == "---" }
  unless closing
    valid = fail_with(file, "frontmatter has no exact closing --- line")
    all_valid = false
    next
  end
  closing += 1

  begin
    data = YAML.safe_load(lines[1...closing].join, aliases: false)
  rescue Psych::Exception => e
    valid = fail_with(file, "invalid YAML: #{e.message}")
    all_valid = false
    next
  end

  valid = fail_with(file, "frontmatter must be a map") unless data.is_a?(Hash)
  valid = fail_with(file, "name must be a nonempty string") unless data["name"].is_a?(String) && !data["name"].empty?

  colors = data["colors"]
  unless colors.is_a?(Hash) && colors.key?("primary")
    valid = fail_with(file, "colors must contain a primary token")
  else
    colors.each do |name, value|
      unless value.is_a?(String) && (value.match?(HEX_COLOR) || value.match?(/\A(?:rgb|rgba|hsl|hsla|hwb|oklch|oklab|lch|lab|color-mix)\(/) || value.match?(/\A[a-zA-Z]+\z/))
        valid = fail_with(file, "colors.#{name} is not a supported CSS color string")
      end
    end
  end

  if data["typography"]
    unless data["typography"].is_a?(Hash)
      valid = fail_with(file, "typography must be a map")
    else
      data["typography"].each do |name, token|
        unless token.is_a?(Hash)
          valid = fail_with(file, "typography.#{name} must be a map")
          next
        end
        %w[fontSize letterSpacing].each do |property|
          next unless token.key?(property)
          valid = fail_with(file, "typography.#{name}.#{property} must use px, em, or rem") unless token[property].is_a?(String) && token[property].match?(DIMENSION)
        end
        if token.key?("lineHeight") && !(token["lineHeight"].is_a?(Numeric) || (token["lineHeight"].is_a?(String) && token["lineHeight"].match?(DIMENSION)))
          valid = fail_with(file, "typography.#{name}.lineHeight must be unitless or a dimension")
        end
        valid = fail_with(file, "typography.#{name}.fontWeight must be numeric") if token.key?("fontWeight") && !token["fontWeight"].is_a?(Numeric)
      end
    end
  end

  if data["spacing"]
    data["spacing"].each do |name, value|
      unless value.is_a?(Numeric) || (value.is_a?(String) && value.match?(DIMENSION))
        valid = fail_with(file, "spacing.#{name} must be numeric or use px, em, or rem")
      end
    end
  end

  if data["rounded"]
    data["rounded"].each do |name, value|
      valid = fail_with(file, "rounded.#{name} must use px, em, or rem") unless value.is_a?(String) && value.match?(DIMENSION)
    end
  end

  if data["components"]
    data["components"].each do |name, token|
      unless token.is_a?(Hash)
        valid = fail_with(file, "components.#{name} must be a map")
        next
      end
      token.each do |property, value|
        valid = fail_with(file, "components.#{name}.#{property} must be a string") unless value.is_a?(String)
      end
    end
  end

  string_values(data).flat_map { |value| value.scan(/\{([^}]+)\}/).flatten }.each do |reference|
    valid = fail_with(file, "unresolved token reference {#{reference}}") if resolve_path(data, reference).nil?
  end

  body = lines[(closing + 1)..].join
  headings = body.lines.map { |line| line[/\A## (.+?)\s*\z/, 1] }.compact
  if headings != SECTION_ORDER
    valid = fail_with(file, "section headings must appear exactly once in required order; found #{headings.inspect}")
  end

  if valid
    puts "valid #{file}"
  else
    all_valid = false
  end
end

exit(all_valid ? 0 : 1)
