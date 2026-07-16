# Fulcra visual token reference

The color map and visual token sheet are easier to understand as a rendered visual reference than as large Markdown tables. This folder therefore uses three complementary formats:

- [`tokens.yaml`](tokens.yaml) is the compact, reviewable source of truth.
- [`index.html`](index.html) is the generated visual reference with swatches, theme examples, contrast results, typography roles, spacing, radii, and gradients.
- [`SOURCES.md`](SOURCES.md) explains how the values and roles were determined.

The HTML is self-contained: it has no framework, build dependency, external font request, tracking, or network requirement. Download or clone the repository and open `index.html` in a browser.

## Rebuild

Run this from the repository root:

```sh
ruby scripts/build_token_reference.rb
```

Commit `tokens.yaml` and the regenerated `tokens/index.html` together. Do not edit the generated HTML directly.

## Scope

This is a cross-surface visual reference, not a replacement for the three surface-specific DESIGN.md files. Context Mobile, Context Web, and the Fulcra website intentionally differ in typography, density, navigation, and component anatomy.
