# Fulcra design reference

This repository contains practical design references for three Fulcra surfaces:

- Context Mobile for iOS
- Context Web
- the replacement Fulcra public website

It also contains paired dark- and light-mode illustration guides for product explainers, diagrams, decks, web graphics, and other visual assets.

The visual token reference is a self-contained HTML guide for swatches, contrast, typography, spacing, radii, gradients, and depth. It is maintained directly and requires no build step.

Each surface has two documents:

- `DESIGN.md` is the actionable reference. It contains design tokens, visual rules, component behavior, accessibility requirements, and do's and don'ts for implementation and design work.
- `SOURCES.md` is the informative rationale. It follows the same section order and explains how the decisions were derived from product source, real interfaces, current collateral, and explicit design decisions.

Keeping these documents separate allows `DESIGN.md` to remain direct and usable while preserving a reviewable explanation for future maintainers.

## Repository structure

```text
context-mobile/
  DESIGN.md
  SOURCES.md
context-web/
  DESIGN.md
  SOURCES.md
fulcra-website/
  DESIGN.md
  SOURCES.md
illustration/
  README.md
  dark-mode.md
  light-mode.md
  SOURCES.md
tokens/
  README.md
  SOURCES.md
  index.html
```

## Status

These references are ready for colleague review and eventual placement in a Fulcra company repository. They are deliberately surface-specific rather than a single cross-platform theme:

- Mobile retains native iOS typography, presentation, safe-area, and accessibility behavior.
- Web retains the Context application's dense analytical layout, responsive shell, Rubik typography, and web component semantics.
- Website inherits the deliberate product identity while adding explicit public, editorial, light-field, conversion, diagram, and responsive requirements.

The existing Webflow website is not treated as design authority for its replacement. Its implementation may later inform content migration or regression planning, but not the visual specification where it diverges from the deliberate product system.

## Editing rules

Edit `DESIGN.md` when changing a normative design requirement. Update the matching section of `SOURCES.md` when the decision's basis or interpretation changes.

Do not put commit hashes, screenshot ledgers, research-phase notes, or confidence labels into `DESIGN.md`. Do not silently convert a proposed website decision into a claim about an existing implementation. Preserve platform-specific behavior unless a deliberate cross-surface decision replaces it.
