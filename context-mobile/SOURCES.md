# Sources for Context Mobile DESIGN.md

This document explains how I made the determinations in the adjacent `DESIGN.md`. It follows the same section order so that a future editor can audit or refresh one part without putting research notes into the design specification itself.

## Overview

I determined the overall character of Context Mobile by inspecting the real Context 2.4.8 build 214 through iPhone Mirroring on July 14, 2026. The screen ledger M01–M18 covers Focus, insights, Timeline, sleep details, Record, Pools, Notifications, Settings, sheets, loading, and privacy-sensitive states. Those captures are indexed in `fulcra-aesthetic-phase-3.3-mobile-capture.md`, `fulcra-aesthetic-capture-matrix.md`, and `screenshots/mobile/`.

I used `fulcradynamics/stok` at commit `fa0c28ffac38fb0baa904b4352013d1592353f8e` to distinguish repeated app structure from one-off screenshot composition. `NavigationState.swift` and `stok/Base.lproj/Main.storyboard` established the five-tab shell. The production build and repository both identify version 2.4.8, although the exact production-build-to-commit mapping remains unverified.

I treated the Pools dashboard as a special-purpose exception because the user identified custom pool dashboards as a distinct feature family. Its presence in the app therefore did not redefine the general card, navigation, or data-density rules.

## Colors

I determined the mobile color values primarily from `MiscExtensions.swift`, especially the declarations indexed in `tmp/token-extracts/mobile/phase-1.1-mobile-source-extract.md`. The coarse Swift decimal definitions yield approximately `#57D6B8` for mint, `#7A61FF` for violet, `#17171C` for the main dark background, `#212126` for the nested dark neutral, and `#8A8A8F` for secondary gray.

I used the storyboard color resources for the exact `#56D6B7` mint and `#7B61FF` violet values. I kept the slight precision difference visible in the DESIGN.md instead of pretending the Swift declarations and storyboard are identical.

I determined the semantic roles by comparing source call sites with the real app. Mint repeatedly appears on normal actions, current values, positive/status information, and inactive tab tint. Violet repeatedly marks active navigation, selected controls, outcome emphasis, and time anchors. The categorical sleep and chart colors came from the chart implementation and the Timeline and sleep-detail captures, not from assigning meanings to isolated swatches.

I determined the mint-to-violet gradient direction from the implemented reusable gradient helpers in `FocusViewController.swift`. Those helpers render from top-leading to bottom-trailing even though their signatures suggest configurable directions.

## Typography

I determined the type family by searching the application bundle, project configuration, assets, and Swift source for registered fonts, bundled font files, `Font.custom`, and named `UIFont` calls. None were present, so the DESIGN.md specifies the iOS system family rather than importing the web brand font.

I determined the hierarchy from the semantic SwiftUI and UIKit roles used throughout the app: `largeTitle`, `title`, `title2`, `title3`, `headline`, `subheadline`, `body`, `callout`, `footnote`, `caption`, and `caption2`. I determined the aligned-number rule from repeated `.monospacedDigit()` and `.monospaced()` call sites in recording, reflection, Timeline, detail, and widget code.

The real-device captures showed the editorial distinction between large gradient Focus statements and compact native Settings or analytical type. Dynamic Type at enlarged accessibility sizes could not be inspected in the local build because the Simulator app exits on a `GoogleCloudLogHandler` initialization assertion. For that reason the DESIGN.md expresses Dynamic Type as a required behavior without claiming that every current component already passes it.

## Layout

I determined the main layout from the real portrait app, the storyboard shell, SwiftUI view composition, and repeated spacing values in source. The app consistently uses black safe areas, a five-tab bottom bar, vertically sequenced cards, and sheets for deeper detail and settings.

I derived the 4/8 point dense relationships, 12/16 point card internals, and 24 point section spacing from the source-frequency analysis in the mobile token extract. I kept 36 points as an exceptional large interval because it occurs in source but does not function as the ordinary rhythm.

I determined the stable Timeline card zones, no-data tracks, Record ordering, sleep-detail sheet behavior, and native range popovers from M04–M15. I did not infer landscape, iPad, keyboard, or accessibility-size behavior from a portrait phone capture; those remain recorded in `fulcra-aesthetic-findings-summary-gap-backlog.md`.

The YAML uses `px` because the current DESIGN.md schema accepts CSS dimensions but not `pt`. The adjacent specification states the intended serialization rule: one design-coordinate pixel maps to one iOS point in implementation, while text remains semantic and Dynamic Type-managed.

## Elevation & Depth

I determined the general flatness from the real app and source: black and charcoal tonal steps, quiet borders, and native sheet or material separation carry most hierarchy. I did not find evidence for a generic heavy card-shadow system.

I took the reusable compact shadow from `PillModifier.swift` and `SearchActionControlsView.swift`: black at 24 percent opacity, radius 8 points, and a 4 point vertical offset. I took the gradient-card fill, opacity, padding, and radius from the reusable definitions in `FocusViewController.swift` and related card modifiers.

I determined backdrop dimming, sheet separation, and material use from the live sheets and the material call sites. I excluded iPhone Mirroring drag or dismissal failures because they were limitations of the control channel rather than evidence about the app.

## Shapes

I determined the 8 point compact-control radius from `PillModifier.swift` and the repetition scan. I determined the 12 point standard card radius and padding from `HomeView.swift` and reused card modifiers. I determined the 20 point selected-segment radius, 20 point icon size, 6 point internal gap, and half-point divider from `SegmentedControl.swift`.

I took the 24 point gradient-outline default and one-point stroke from `FulcraOODALoopView.swift`, while noting that components sometimes override that default. I determined the appropriate use of circles, capsules, rings, rounded rectangles, and the signature hexagon by comparing bundled assets and implemented components with the production screens. The repeated result was that the hexagon functions as identity geometry, not as a universal content container.

## Components

I built the component rules by pairing the production screen matrix with the source inventory in `fulcra-aesthetic-component-state-matrix.md`. This covered cards, pills, segmented controls, the Focus summary, insight and factor cards, Timeline rows, sleep details, Record cards, Notifications, Settings, loading, sheets, and icon behavior.

I used the source for exact geometry where it existed and the real app for composition, density, and meaningful state changes. For example, M01 and M15 established that Focus loading preserves geometry and dims values rather than replacing the card with shimmer. M04 and M15 established the common Timeline ruler and pending ring. M06 established the sleep-detail anatomy, and M13–M14 established grouped Settings rows and native controls.

I determined the icon rule from SF Symbols calls and 214 bundled image sets. Some SVG files retain Font Awesome export metadata, but the app has no runtime Font Awesome dependency, so the DESIGN.md does not prescribe a Font Awesome pack for iOS.

I wrote explicit requirements for empty, retry, error, offline, destructive, reduced-motion, VoiceOver, and non-color behavior where the present evidence was incomplete. Those are normative completion rules, not claims that every current screen has already been observed in those states.

## Do's and Don'ts

I wrote the do's and don'ts by turning repeated production behavior and verified implementation boundaries into practical review rules. The forced-dark tonal hierarchy, mint action, violet selection, exact data labels, contextual chart palettes, stable loading geometry, and native sheet behavior recur across both source and production.

I wrote the prohibitions to prevent unsupported normalization. The evidence did not support applying a custom brand font to iOS, flattening every chart into mint and violet, turning every container into a hexagon, adding generic heavy shadows, or treating a loading capture as proof of empty and error behavior. I also kept accessibility checks explicit because the custom controls and charts have not yet received a complete VoiceOver and Dynamic Type audit.

