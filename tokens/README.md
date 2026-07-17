# Fulcra visual token reference

The color map and visual token sheet are easier to understand as a rendered visual reference than as large Markdown tables. This folder therefore contains two complementary documents:

- [`index.html`](index.html) is the maintained visual reference with swatches, theme examples, contrast results, typography roles, spacing, radii, and gradients.
- [`SOURCES.md`](SOURCES.md) explains how the values and roles were determined.

The HTML is self-contained: it has no framework, generator, external font request, tracking, or network requirement. Download or clone the repository and open `index.html` in a browser.

## Editing

Edit `index.html` directly. The maintained palette, gradients, spacing, radii, and shadows are grouped as CSS custom properties at the beginning of its style block. When changing a color, update its visible hexadecimal label and any affected contrast row in the same commit.

Keep it dependency-free and usable from the filesystem. Do not introduce a build step merely to avoid the small amount of deliberate repetition required by a visual reference.

## Scope

This is a cross-surface visual reference, not a replacement for the three surface-specific DESIGN.md files. Context Mobile, Context Web, and the Fulcra website intentionally differ in typography, density, navigation, and component anatomy.
