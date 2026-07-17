# Sources for the Fulcra illustration guides

This document explains how I made the determinations in the dark- and light-mode illustration guides. It keeps research history and confidence judgments outside the actionable guides.

## Product foundations

I used the final Context Mobile and Context Web design references in this repository as the primary source for dark product surfaces, semantic color, typography, component geometry, chart behavior, icon behavior, and the user-owned context model. Their adjacent `SOURCES.md` files contain the detailed code, route, capture, and recency record.

The mobile evidence came from Context 2.4.8 build 214, the `fulcradynamics/stok` source snapshot, and the M01–M18 production capture ledger. The web evidence came from the authenticated Context application, the `fulcradynamics/portal` source snapshot, and the W01–W24 capture ledger. I used product source for exact values and production views for composition and meaning.

I did not use the current Webflow website as design authority. Its implementation may be useful for content migration or regression work, but it does not settle illustration rules where it diverges from the deliberate product system.

## Dark-mode guide

I derived the dark material hierarchy from Context Mobile and Context Web: black `#000000`, primary charcoal `#16161D`, raised charcoal `#222227`, dark dividers, white primary text, and gray secondary text. The products also established mint as normal action and current data, violet as selection and interpretation, blue as reference or information, and local domain palettes for charts.

I derived the illustration geometry from the product shell and cards, recent Timeline and Record designs, bundled Fulcra marks, and the dark versions on the Figma `Diagrams and Materials` pages. These sources repeatedly use rounded cards, compact chips, rings, shared axes, dotted relationships, explicit handoff arrows, a central owned layer, and a hexagonal signature that is not applied to every node.

I derived the dark composition patterns from real product mechanics. The owned hub, controlled pipeline, loop with update, inspectable ledger, and mobile instrument are simplified explanations of actual context, permission, history, and Timeline structures rather than generic technology-diagram templates.

The contrast substitutions for violet and blue normal text came from the same WCAG calculations used for the Website DESIGN.md. This is why the guide preserves canonical colors for identity and non-text marks while using lighter variants for small text on dark panels.

## Light-mode guide

I derived the light mode primarily from the July 8, 2026 investor deck and the recent Figma `Diagrams and Materials` file. The deck supplied the white editorial field, Rubik headline voice, DM Sans body role, Roboto Mono technical role, pale mint, violet, and blue grouping fields, layered context stacks, comparison layouts, and presentation-scale whitespace.

The Figma `Deck Diagrams` and `Images` pages corroborated paired light and dark topology, a central context or data core, peripheral users and agents, dotted and direct paths, and small geometric assets that transition from mint through blue to violet.

I aligned the light colors with the final Website DESIGN.md and its contrast audit. This replaced approximate or ambiguous text colors with the defined `#16161D` primary ink, `#626A78` secondary ink and interactive boundary, `#287D69` mint text, `#6F52E5` violet text or fill, and `#0066CC` blue text. I retained `#D9DCE2` only as a decorative divider because it does not provide enough contrast to be the sole edge of an interactive control.

## Shared rules

I kept the two modes semantically paired. The nodes, ownership boundary, direction of access, labels, and color meanings should survive mode changes. Dark mode creates hierarchy with tonal depth and restrained luminosity; light mode creates it with whitespace, pale grouping fields, and dark ink.

The avoidance rules come from repeated failures of generic AI and enterprise imagery to explain the actual product. Robot mascots, brains, neural webs, logo soup, unlabeled charts, giant padlocks, and ambient gradients remove ownership, permission, provenance, or inspectability—the mechanics that make the Fulcra story specific.

The prompt blocks are condensed production aids derived from the complete guides. They are not independent sources and should be updated whenever the corresponding guide changes.

