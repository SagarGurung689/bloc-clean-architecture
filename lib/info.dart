// Flutter UI Checklist (For Developers)
// 1. Spacing & Padding

//  Did I use 8/16/24/32 spacing consistently (not random 13 or 21)?

//  Are left & right paddings equal (e.g., EdgeInsets.symmetric(horizontal: 16))?

//  Are items evenly spaced (not squished or floating)?

// 2. Typography

//  Am I using Theme.of(context).textTheme instead of random font sizes?

//  Is the title bigger than the subtitle, and the subtitle bigger than the body?

//  Am I avoiding too many bold texts?

//  Font sizes follow multiples of 2 or 4 (12, 14, 16, 20, 24).

// 3. Colors

//  Am I using a 3–4 color palette (primary, secondary, background, accent)?

//  Did I define colors in ThemeData (not hardcode hex values everywhere)?

//  Do text and background have good contrast (easy to read)?

// 4. Alignment

//  Are all cards, texts, and buttons aligned (no misaligned edges)?

//  Are icons and text vertically centered in rows?

//  Lists and grids use CrossAxisAlignment.start for neat alignment.

// 5. Consistency

//  Buttons all look the same (not different shapes per screen).

//  Cards have the same corner radius & shadows.

//  Icon style is consistent (all outlined or all filled, not mixed).

// 6. Reusability

//  Did I extract a reusable widget for cards, buttons, or list tiles?

//  Am I reusing padding/spacing constants (not magic numbers everywhere)?

//  Is ThemeData handling most of my fonts/colors/shapes?

// 7. Extras (Pro Touch)

//  Rounded corners (BorderRadius.circular(12/16)) for images & cards.

//  Shadows or subtle elevation for depth (not too strong).

//  Animations for taps/hover (e.g., InkWell, AnimatedContainer).

//  Responsive sizing (use MediaQuery or LayoutBuilder).

// 📌 Shortcut Tip:

// If in doubt, apply the 8pt Grid Rule:

// Margins = 16

// Small gap = 8

// Medium gap = 16

// Large gap = 24