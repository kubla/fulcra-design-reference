# Sources for Fulcra Website DESIGN.md

This document explains how I made the determinations in the adjacent `DESIGN.md`. It follows the same section order and keeps the distinction between inherited product behavior and website-specific design decisions outside the normative specification.

The user explicitly determined that the current Webflow website is not a design authority. Where it inherits from Context Mobile or Context Web, the inherited rule may be canonical; where it diverges, the divergence is presumed to be an implementation workaround rather than an important aesthetic choice. I therefore did not use a visual audit of the current website to settle design questions for its replacement.

## Overview

I determined the website's product relationship from the completed Context Mobile and Context Web findings. Both products are calm, exact, dark, data-rich, and centered on user-owned context. I translated that character into a more spacious public and editorial medium rather than copying the applications' density or navigation anatomy.

I determined the central “many signals and agents to one owned context layer to permissioned use” composition from the July 8, 2026 investor deck and the recent Figma file `Diagrams and Materials`, especially the `Deck Diagrams` and `Images` pages. Those sources repeatedly show a central context or data core, peripheral inputs and agents, explicit paths, and permission or scope relationships.

I used the website responsibility inventory in `fulcra-aesthetic-findings-summary.md` for navigation, product explanation, proof, conversion, forms, legal links, diagrams, and product imagery. These are proposed rules for the replacement site, not descriptions of the present Webflow implementation.

## Colors

I inherited mint `#56D6B7`, violet `#7B61FF`, blue `#007AFF`, black `#000000`, dark panel `#16161D`, raised dark surface `#222227`, dark divider `#38383A`, white, and dark-field gray `#8A8A8E` from the product applications and their source tokens.

I determined that the website needs a deliberate light field from the investor deck, which uses white space and pale mint, violet, and blue grouping fields. The deck supplied the starting pale values `#E6F9F1`, `#E0D8FE`, and `#D8EBFE`. I used the product's dark neutral `#16161D` as primary light-field ink and introduced `#626A78` as readable secondary ink and interactive boundary on white.

I calculated every core foreground and background pair with the WCAG relative-luminance method in `tmp/design-md-dry-run/contrast_audit.rb`. The generated `contrast-report.md` showed that canonical violet and blue do not reach 4.5:1 for normal text on white, and that canonical violet also misses for white normal-size text on a violet fill. I therefore selected `#6F52E5` for light-field violet text and filled controls, `#9C88FF` for dark-field violet text, `#0066CC` for light-field blue text, and `#0A84FF` for dark-field blue text.

The same audit established `#287D69` for mint text and focus on white, `#208637` for success text, `#D70015` for error text, and `#765A00` for warning text. It also showed that `#D9DCE2` is too quiet to be the sole boundary of an interactive control, so I retained it only as a decorative divider and used `#626A78` where a visible control boundary is required.

## Typography

I inherited Rubik from Context Web, where the loaded family and weights are verified in the application source. The investor deck also uses Rubik as its headline voice, which made it a good fit for display headings, navigation, labels, and buttons on the website.

I selected DM Sans for editorial body copy and Roboto Mono for code, endpoints, scopes, timestamps, and technical snippets because those families and roles appear in the current deck resources. They are website-specific decisions rather than claims that the mobile or web product uses those families in those roles.

I developed the responsive type scale by combining the product's restrained hierarchy with the larger requirements of a public editorial surface. I encoded concrete desktop roles in the dry-run DESIGN.md and paired them with smaller mobile values in the prose and responsive fixture. The intent is short declarative display copy, readable 16-to-20-pixel editorial text, compact labels, and monospace only where content is genuinely technical.

## Layout

I inherited the 4-pixel spacing basis, 1280-pixel maximum width, and 640/768/1024/1280-pixel breakpoint baseline from Context Web. I added 64 and 96-pixel editorial intervals because a public narrative page needs more breathing room than an application instrument.

I selected approximately 720 pixels, or roughly 70 to 75 characters, as the prose measure to keep long-form explanation readable. I used a twelve-column desktop grid as a flexible implementation baseline, with content-driven one- and two-column compositions at smaller widths.

I tested the layout contract in `tmp/design-md-dry-run/website-fixture.html`. Its default wide layout, 900-pixel reflow, and 640-pixel phone rules cover header collapse, hero stacking, diagram simplification, product-frame overflow, form layout, footer columns, 44-pixel targets, visible focus, and reduced motion. The browser-control surface would not open the local `file://` fixture, so this was a source-structure validation rather than a claim of final browser rendering.

## Elevation & Depth

I inherited dark-field depth from the products: black canvas, charcoal panels, quiet borders, and sparse shadow. I determined the light-field approach from the deck's use of whitespace and pale semantic regions rather than large glowing shadows.

I specified ordinary light cards with no shadow and a quiet decorative border. I selected `0 12px 32px rgba(22,22,29,0.12)` as the single restrained floating-media or dialog shadow and encoded it in the dry-run fixture. This is a proposed website decision intended to distinguish genuinely floating content without turning every card into an elevated SaaS tile.

I carried modal focus containment, background inertness, and tonal hover behavior over from the web application's interaction model, while making the accessibility requirements explicit from the outset.

## Shapes

I inherited 8 pixels for compact controls and 12 pixels for standard cards from the product systems. I introduced 16 pixels for larger editorial panels because those containers need more visual room without becoming unrelated to the products. Full radius remains appropriate for pills and circular actions.

I determined the diagram geometry from the deck and recent Figma materials. The Fulcra hexagon or spiral identifies the owned-context core, circles work for agents and endpoints, rounded rectangles work for information and product modules, dotted paths imply relationship or orbit, and solid arrows imply explicit handoff or direction.

The evidence did not support using the hexagon for every node or creating a generic enterprise hex grid. That boundary is why the DESIGN.md treats the mark as signature geometry instead of a universal component shape.

## Components

I derived website interaction semantics from Context Web: mint normal action, violet selective emphasis, explicit disabled and loading states, visible focus, labeled mobile navigation, dialogs that contain and return focus, and stable loading geometry. I adapted those semantics to public-site components rather than reusing application anatomy.

I determined the component families from the replacement website's responsibilities: header, hero, buttons and links, product-story sections, cards, diagrams, product imagery, forms, dialogs and consent, loading and error pages, footer, and icons. The user did not supply a final sitemap, so the specification defines reusable component responsibilities rather than pretending to know the final route inventory.

I required real product imagery because the product itself is the strongest proof of the system. The production Context captures established what truthful UI looks like, while the deck and Figma diagrams established how product views and system explanations can coexist. Crops and composites therefore have to be labeled rather than redrawn into cleaner fictional interfaces.

I chose not to prescribe the web application's Font Awesome Pro dependency for the public site. The products establish the semantic use of icons and `currentColor` behavior, but the replacement implementation should deliberately choose one runtime pack and weight while keeping custom logo and diagram assets separate.

## Do's and Don'ts

I wrote the do's and don'ts by combining the shared product character, the deck's light-mode explanatory language, the recent system diagrams, accessibility requirements, and the user's decision to exclude current Webflow styling from design authority.

The positive rules preserve exact product mechanics, real UI, labeled diagrams, mint and violet identity, semantic blue and status colors, readable light fields, and explicit reasons for website-only decisions. The prohibitions reject generic SaaS cards, stock people, robot mascots, ambient gradient or glow, decorative monospace, fictional product screenshots, application-level Timeline density across whole editorial pages, and unapproved logo constraints.

Logo clear-space, minimum-size, monochrome, and trademark rules remain intentionally absent because no explicit brand source or decision establishes them. The final information architecture also remains an implementation-planning input. Neither gap requires importing visual behavior from the current Webflow site.

