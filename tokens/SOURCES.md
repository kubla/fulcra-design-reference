# Sources for the Fulcra visual token reference

This document explains how I selected and normalized the values in `tokens.yaml` and the generated HTML reference.

## Source hierarchy

I used the three final DESIGN.md files in this repository as the governing source for the reference. Their companion `SOURCES.md` files preserve the detailed code, production-interface, collateral, and decision history.

I used product source and real product behavior for Context Mobile and Context Web. I used those deliberate product systems, the July 2026 investor deck, recent `Diagrams and Materials`, and explicit website decisions for the Fulcra website. I did not use the current Webflow site's styling to settle cross-surface values.

## Colors

I took the canonical mint `#56D6B7`, violet `#7B61FF`, blue `#007AFF`, black `#000000`, dark panel `#16161D`, raised dark panel `#222227`, dividers `#38383A` and `#333333`, white, and dark secondary text `#8A8A8E` from the product references.

I took the light surface colors `#FFFFFF`, `#E6F9F1`, `#E0D8FE`, and `#D8EBFE` from the website reference, where product identity is adapted to the deck-supported editorial field. The readable light-field and dark-field variants come from the recorded WCAG calculations: mint `#287D69`, violet `#6F52E5` and `#9C88FF`, blue `#0066CC` and `#0A84FF`, success `#208637`, error `#D70015`, and warning `#765A00`.

I retained canonical colors alongside readable variants because the canonical values remain correct for identity, large text, non-text marks, charts, and passing foreground/background combinations. The reference makes the distinction visible instead of silently replacing the brand primitives.

## Typography

I kept typography surface-specific. Context Mobile uses San Francisco through semantic iOS styles and monospaced digits. Context Web uses Rubik with its compact 12–24px product hierarchy. The website uses Rubik for display and UI, DM Sans for editorial body copy, and Roboto Mono for technical content.

The HTML uses local system fallbacks and makes no network font request. Its samples demonstrate hierarchy and roles; they do not prove that the viewer has Rubik, DM Sans, or Roboto Mono installed.

## Spacing, radii, and depth

I used the common 4-unit rhythm shared by the products, then preserved the surface-specific extensions. Eight units serves compact controls, 12 serves cards and mobile internals, 16 serves larger website panels, and full radius serves pills and circular controls.

I retained the product preference for tonal depth and quiet borders. The compact mobile control shadow and restrained website floating shadow appear as bounded exceptions rather than a general shadow scale.

## Contrast

The generator calculates WCAG relative luminance and contrast ratios directly from each foreground and background pair in `tokens.yaml`. The displayed pass or fail status is therefore reproducible rather than copied from prose.

Contrast results cover the core reference pairs. Real components still require testing with their actual font size, weight, opacity, gradients, imagery, hover and focus states, disabled treatment, and non-color encodings.
