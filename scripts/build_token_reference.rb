require "cgi"
require "erb"
require "yaml"

ROOT = File.expand_path("..", __dir__)
source = ARGV[0] || File.join(ROOT, "tokens", "tokens.yaml")
destination = ARGV[1] || File.join(ROOT, "tokens", "index.html")
data = YAML.safe_load(File.read(source), permitted_classes: [], aliases: false)

def h(value)
  CGI.escapeHTML(value.to_s)
end

def rgb(hex)
  value = hex.delete_prefix("#")
  [value[0, 2], value[2, 2], value[4, 2]].map { |part| part.to_i(16) / 255.0 }
end

def luminance(hex)
  channels = rgb(hex).map do |channel|
    channel <= 0.04045 ? channel / 12.92 : ((channel + 0.055) / 1.055) ** 2.4
  end
  0.2126 * channels[0] + 0.7152 * channels[1] + 0.0722 * channels[2]
end

def contrast(foreground, background)
  high, low = [luminance(foreground), luminance(background)].sort.reverse
  (high + 0.05) / (low + 0.05)
end

template = <<~'HTML'
  <!doctype html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="color-scheme" content="light dark">
    <title><%= h(data.dig("meta", "title")) %></title>
    <style>
      :root {
        --ink: #16161d;
        --muted: #626a78;
        --canvas: #f4f5f7;
        --paper: #ffffff;
        --line: #d9dce2;
        --mint: #56d6b7;
        --mint-readable: #287d69;
        --violet: #7b61ff;
        --violet-readable: #6f52e5;
        --blue: #007aff;
        --radius: 16px;
        --shadow: 0 12px 32px rgba(22,22,29,.08);
      }

      * { box-sizing: border-box; }
      html { scroll-behavior: smooth; }
      body {
        margin: 0;
        color: var(--ink);
        background: var(--canvas);
        font-family: "DM Sans", Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
        line-height: 1.55;
      }
      a { color: var(--violet-readable); }
      code, .token-name, .token-value {
        font-family: "Roboto Mono", "SFMono-Regular", Consolas, monospace;
      }
      .wrap { width: min(1240px, calc(100% - 40px)); margin: 0 auto; }
      .hero {
        color: #fff;
        background: #000;
        padding: 72px 0 56px;
        border-bottom: 1px solid #38383a;
      }
      .hero::before {
        content: "";
        display: block;
        width: 160px;
        height: 6px;
        margin-bottom: 28px;
        border-radius: 999px;
        background: linear-gradient(135deg, #56d6b7, #7b61ff);
      }
      .eyebrow {
        margin: 0 0 12px;
        color: #9c88ff;
        font: 600 12px/1.2 Rubik, ui-sans-serif, system-ui, sans-serif;
        letter-spacing: .12em;
        text-transform: uppercase;
      }
      h1, h2, h3 {
        font-family: Rubik, ui-sans-serif, system-ui, sans-serif;
        line-height: 1.12;
      }
      h1 { max-width: 850px; margin: 0; font-size: clamp(42px, 7vw, 76px); font-weight: 450; letter-spacing: -.035em; }
      .hero p { max-width: 720px; margin: 22px 0 0; color: #c5c5cb; font-size: 19px; }
      .hero .note { color: #8a8a8e; font-size: 14px; }
      nav {
        position: sticky;
        top: 0;
        z-index: 3;
        background: rgba(255,255,255,.94);
        border-bottom: 1px solid var(--line);
        backdrop-filter: blur(12px);
      }
      nav .wrap { display: flex; gap: 8px; overflow-x: auto; padding-block: 12px; }
      nav a {
        flex: 0 0 auto;
        padding: 7px 11px;
        color: var(--ink);
        border-radius: 999px;
        text-decoration: none;
        font: 600 12px/1.2 Rubik, ui-sans-serif, system-ui, sans-serif;
      }
      nav a:hover, nav a:focus-visible { background: #e6f9f1; outline: 2px solid transparent; }
      main { padding: 28px 0 88px; }
      section {
        margin-top: 28px;
        padding: clamp(24px, 4vw, 48px);
        background: var(--paper);
        border: 1px solid var(--line);
        border-radius: var(--radius);
        box-shadow: var(--shadow);
      }
      section > header { max-width: 760px; margin-bottom: 28px; }
      h2 { margin: 0 0 10px; font-size: clamp(28px, 4vw, 40px); letter-spacing: -.02em; }
      h3 { margin: 0 0 7px; font-size: 20px; }
      section > header p, .group-intro { margin: 0; color: var(--muted); }
      .token-group + .token-group { margin-top: 36px; }
      .swatch-grid, .gradient-grid, .type-grid, .theme-grid, .shape-grid {
        display: grid;
        grid-template-columns: repeat(3, minmax(0, 1fr));
        gap: 16px;
      }
      .swatch-card, .gradient-card, .type-card, .shape-card {
        overflow: hidden;
        border: 1px solid var(--line);
        border-radius: 12px;
        background: #fff;
      }
      .swatch { min-height: 118px; border-bottom: 1px solid rgba(22,22,29,.12); }
      .card-copy { padding: 16px; }
      .card-copy h3 { display: flex; justify-content: space-between; gap: 12px; }
      .token-name { color: var(--muted); font-size: 11px; overflow-wrap: anywhere; }
      .token-value { display: inline-block; margin-top: 10px; font-size: 13px; font-weight: 600; }
      .card-copy p { margin: 10px 0 0; color: var(--muted); font-size: 14px; }
      .theme-panel { min-height: 340px; padding: 26px; border-radius: 16px; }
      .theme-panel.dark { color: #fff; background: #000; }
      .theme-panel.light { color: #16161d; background: #fff; border: 1px solid var(--line); }
      .theme-card { margin-top: 20px; padding: 22px; border-radius: 12px; }
      .dark .theme-card { background: #16161d; border: 1px solid #38383a; }
      .light .theme-card { background: #e6f9f1; }
      .theme-label { color: #8a8a8e; font: 600 12px/1 Rubik, sans-serif; letter-spacing: .08em; text-transform: uppercase; }
      .light .theme-label { color: #626a78; }
      .theme-value { margin: 12px 0 4px; font: 500 34px/1.05 Rubik, sans-serif; }
      .theme-meta { color: #8a8a8e; }
      .light .theme-meta { color: #626a78; }
      .button-sample { display: inline-block; margin-top: 22px; padding: 11px 16px; border-radius: 8px; font: 600 13px/1 Rubik, sans-serif; }
      .dark .button-sample { color: #16161d; background: #56d6b7; }
      .light .button-sample { color: #fff; background: #6f52e5; }
      .gradient-preview { min-height: 150px; }
      .gradient-card code { display: block; margin-top: 10px; color: var(--muted); font-size: 11px; overflow-wrap: anywhere; }
      .type-card { padding: 22px; }
      .type-card .family { color: var(--violet-readable); font: 600 12px/1 Rubik, sans-serif; letter-spacing: .08em; text-transform: uppercase; }
      .type-sample { margin: 18px 0 12px; font-size: 28px; line-height: 1.1; }
      .type-card[data-surface="Context Mobile"] .type-sample { font-family: -apple-system, BlinkMacSystemFont, sans-serif; }
      .type-card[data-surface="Context Web"] .type-sample { font-family: Rubik, ui-sans-serif, system-ui, sans-serif; }
      .type-card[data-surface="Fulcra Website"] .type-sample { font-family: "DM Sans", ui-sans-serif, system-ui, sans-serif; }
      .type-card p { color: var(--muted); font-size: 14px; }
      .measure-row { display: grid; grid-template-columns: 100px 1fr 1.6fr; align-items: center; gap: 16px; padding: 10px 0; border-bottom: 1px solid #eceef1; }
      .measure-row:last-child { border-bottom: 0; }
      .measure-bar { height: 12px; border-radius: 999px; background: linear-gradient(90deg, var(--mint), var(--violet)); }
      .measure-use { color: var(--muted); font-size: 13px; }
      .shape-card { padding: 22px; }
      .radius-sample { width: 100%; height: 92px; margin-bottom: 16px; background: #e0d8fe; border: 1px solid #7b61ff; }
      .shadow-sample { width: 100%; height: 92px; margin-bottom: 16px; background: #fff; border-radius: 12px; }
      table { width: 100%; border-collapse: collapse; font-size: 14px; }
      th, td { padding: 12px 10px; text-align: left; border-bottom: 1px solid #e5e7eb; vertical-align: middle; }
      th { color: var(--muted); font: 600 11px/1.2 Rubik, sans-serif; letter-spacing: .07em; text-transform: uppercase; }
      .pair { display: inline-flex; overflow: hidden; border: 1px solid #c8cbd2; border-radius: 8px; }
      .pair span { display: block; width: 42px; height: 32px; }
      .badge { display: inline-block; min-width: 50px; padding: 5px 8px; border-radius: 999px; text-align: center; font: 700 11px/1 Rubik, sans-serif; }
      .badge.pass { color: #145c2a; background: #e7f7ea; }
      .badge.fail { color: #9c1020; background: #fdebed; }
      .principles { display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 12px; padding: 0; list-style: none; }
      .principles li { padding: 18px; background: #f7f8fa; border-radius: 12px; }
      footer { padding: 30px 0 56px; color: var(--muted); font-size: 13px; }
      :focus-visible { outline: 3px solid #287d69; outline-offset: 3px; }
      @media (max-width: 900px) {
        .swatch-grid, .gradient-grid, .type-grid, .shape-grid { grid-template-columns: repeat(2, minmax(0, 1fr)); }
        .theme-grid { grid-template-columns: 1fr; }
      }
      @media (max-width: 640px) {
        .wrap { width: min(100% - 24px, 1240px); }
        .hero { padding: 50px 0 40px; }
        section { padding: 22px; border-radius: 12px; }
        .swatch-grid, .gradient-grid, .type-grid, .shape-grid, .principles { grid-template-columns: 1fr; }
        .measure-row { grid-template-columns: 72px 1fr; }
        .measure-use { grid-column: 1 / -1; }
        .table-wrap { overflow-x: auto; }
      }
      @media (prefers-reduced-motion: reduce) { html { scroll-behavior: auto; } }
      @media print {
        nav { display: none; }
        body { background: #fff; }
        section { box-shadow: none; break-inside: avoid; }
      }
    </style>
  </head>
  <body>
    <header class="hero">
      <div class="wrap">
        <p class="eyebrow">Working reference</p>
        <h1><%= h(data.dig("meta", "title")) %></h1>
        <p><%= h(data.dig("meta", "subtitle")) %></p>
        <p class="note"><%= h(data.dig("meta", "note")) %></p>
      </div>
    </header>

    <nav aria-label="Reference sections">
      <div class="wrap">
        <a href="#colors">Colors</a>
        <a href="#themes">Themes</a>
        <a href="#gradients">Gradients</a>
        <a href="#typography">Typography</a>
        <a href="#rhythm">Rhythm</a>
        <a href="#contrast">Contrast</a>
        <a href="#principles">Principles</a>
      </div>
    </nav>

    <main class="wrap">
      <section id="colors">
        <header>
          <h2>Colors</h2>
          <p>Canonical identity colors stay visible alongside the variants required for readable normal text.</p>
        </header>
        <% data.fetch("color_groups").each do |group| %>
          <div class="token-group">
            <h3><%= h(group.fetch("name")) %></h3>
            <p class="group-intro"><%= h(group.fetch("description")) %></p>
            <div class="swatch-grid" style="margin-top: 14px">
              <% group.fetch("tokens").each do |token| %>
                <article class="swatch-card">
                  <div class="swatch" style="background: <%= h(token.fetch("value")) %>"></div>
                  <div class="card-copy">
                    <h3><span><%= h(token.fetch("name")) %></span></h3>
                    <div class="token-name"><%= h(token.fetch("css")) %></div>
                    <div class="token-value"><%= h(token.fetch("value")) %></div>
                    <p><%= h(token.fetch("use")) %></p>
                  </div>
                </article>
              <% end %>
            </div>
          </div>
        <% end %>
      </section>

      <section id="themes">
        <header>
          <h2>Light and dark material</h2>
          <p>The product-native dark system and editorial light system share semantic color while using different depth cues.</p>
        </header>
        <div class="theme-grid">
          <article class="theme-panel dark">
            <span class="theme-label">Dark product field</span>
            <div class="theme-card">
              <div class="theme-label">Current context</div>
              <div class="theme-value">74.11 bpm</div>
              <div class="theme-meta">May 4–Jul 3 · resting heart rate</div>
              <span class="button-sample">Review timeline</span>
            </div>
          </article>
          <article class="theme-panel light">
            <span class="theme-label">Light editorial field</span>
            <div class="theme-card">
              <div class="theme-label">Owned context</div>
              <div class="theme-value">One layer, scoped access</div>
              <div class="theme-meta">Signals remain legible, permissioned, and reviewable.</div>
              <span class="button-sample">Explore the system</span>
            </div>
          </article>
        </div>
      </section>

      <section id="gradients">
        <header>
          <h2>Gradients</h2>
          <p>Use gradients for identity, selected context, or transformation—not as an ambient page treatment.</p>
        </header>
        <div class="gradient-grid">
          <% data.fetch("gradients").each do |gradient| %>
            <article class="gradient-card">
              <div class="gradient-preview" style="background: <%= h(gradient.fetch("value")) %>"></div>
              <div class="card-copy">
                <h3><%= h(gradient.fetch("name")) %></h3>
                <div class="token-name"><%= h(gradient.fetch("css")) %></div>
                <code><%= h(gradient.fetch("value")) %></code>
                <p><%= h(gradient.fetch("use")) %></p>
              </div>
            </article>
          <% end %>
        </div>
      </section>

      <section id="typography">
        <header>
          <h2>Typography by surface</h2>
          <p>Hierarchy is shared; families and exact roles remain appropriate to each medium.</p>
        </header>
        <div class="type-grid">
          <% data.fetch("typography").each do |type| %>
            <article class="type-card" data-surface="<%= h(type.fetch("surface")) %>">
              <div class="family"><%= h(type.fetch("surface")) %></div>
              <div class="type-sample">Context should feel exact.</div>
              <h3><%= h(type.fetch("family")) %></h3>
              <p><strong>Roles:</strong> <%= h(type.fetch("roles")) %></p>
              <p><%= h(type.fetch("rule")) %></p>
            </article>
          <% end %>
        </div>
      </section>

      <section id="rhythm">
        <header>
          <h2>Rhythm, shape, and depth</h2>
          <p>A shared 4-unit rhythm supports platform-specific density and editorial breathing room.</p>
        </header>
        <% data.fetch("spacing").each do |space| %>
          <div class="measure-row">
            <div><strong><%= h(space.fetch("value")) %>px</strong></div>
            <div class="measure-bar" style="width: min(100%, <%= [space.fetch("value").to_i * 4, 100].min %>%)"></div>
            <div class="measure-use"><%= h(space.fetch("use")) %></div>
          </div>
        <% end %>
        <h3 style="margin-top: 34px">Radii</h3>
        <div class="shape-grid">
          <% data.fetch("radii").each do |radius| %>
            <article class="shape-card">
              <div class="radius-sample" style="border-radius: <%= radius.fetch("value").to_i > 100 ? 999 : radius.fetch("value") %>px"></div>
              <h3><%= h(radius.fetch("name")) %> · <%= h(radius.fetch("value")) %>px</h3>
              <p><%= h(radius.fetch("use")) %></p>
            </article>
          <% end %>
        </div>
        <h3 style="margin-top: 34px">Depth</h3>
        <div class="shape-grid">
          <% data.fetch("shadows").each do |shadow| %>
            <article class="shape-card" style="background: #f4f5f7">
              <div class="shadow-sample" style="box-shadow: <%= h(shadow.fetch("value")) %>"></div>
              <h3><%= h(shadow.fetch("name")) %></h3>
              <div class="token-name"><%= h(shadow.fetch("value")) %></div>
              <p><%= h(shadow.fetch("use")) %></p>
            </article>
          <% end %>
        </div>
      </section>

      <section id="contrast">
        <header>
          <h2>Core contrast pairs</h2>
          <p>Ratios are calculated from the source tokens when this HTML is generated.</p>
        </header>
        <div class="table-wrap">
          <table>
            <thead><tr><th>Pair</th><th>Preview</th><th>Foreground</th><th>Background</th><th>Ratio</th><th>Target</th><th>Result</th></tr></thead>
            <tbody>
              <% data.fetch("contrast_pairs").each do |pair| %>
                <% ratio = contrast(pair.fetch("foreground"), pair.fetch("background")); passed = ratio >= pair.fetch("target").to_f %>
                <tr>
                  <td><%= h(pair.fetch("name")) %></td>
                  <td><span class="pair" aria-label="Foreground and background preview"><span style="background:<%= h(pair.fetch("foreground")) %>"></span><span style="background:<%= h(pair.fetch("background")) %>"></span></span></td>
                  <td><code><%= h(pair.fetch("foreground")) %></code></td>
                  <td><code><%= h(pair.fetch("background")) %></code></td>
                  <td><strong><%= format("%.2f", ratio) %>:1</strong></td>
                  <td><%= format("%.1f", pair.fetch("target")) %>:1</td>
                  <td><span class="badge <%= passed ? "pass" : "fail" %>"><%= passed ? "Pass" : "Fail" %></span></td>
                </tr>
              <% end %>
            </tbody>
          </table>
        </div>
      </section>

      <section id="principles">
        <header>
          <h2>Using the reference</h2>
          <p>The cross-surface reference is a map, not a command to make every surface identical.</p>
        </header>
        <ul class="principles">
          <li><strong>Preserve meaning.</strong><br>Mint carries normal action and owned context; violet carries selection and interpretation; blue carries information or comparison.</li>
          <li><strong>Keep canonical and readable colors distinct.</strong><br>Do not silently replace identity primitives when only a text pairing needs adjustment.</li>
          <li><strong>Use tonal depth first.</strong><br>Prefer surface, border, and whitespace hierarchy before adding shadow or glow.</li>
          <li><strong>Respect the medium.</strong><br>Mobile, web application, website, deck, and illustration use related but nonidentical typography and density.</li>
          <li><strong>Never rely on color alone.</strong><br>Pair status, chart, selection, and permission colors with labels, shapes, icons, or line styles.</li>
          <li><strong>Check the surface DESIGN.md.</strong><br>When a local rule differs from this overview, the surface-specific reference wins.</li>
        </ul>
      </section>
    </main>

    <footer class="wrap">
      Generated from <code>tokens/tokens.yaml</code> by <code>scripts/build_token_reference.rb</code>. No external assets or network requests.
    </footer>
  </body>
  </html>
HTML

rendered = ERB.new(template, trim_mode: "-").result(binding)
rendered = rendered.each_line.map { |line| line.rstrip }.join("\n") + "\n"
File.write(destination, rendered)
puts "generated #{destination}"
