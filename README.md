# Pug for Compass

Pug is a collection of mixins and functions for use in Sass/Compass projects. It provides various helpers and utilities, some of which are adapted from CSS classes included in various HTML starter packages like Bootstrap and HTML5 Boilerplate. It aims to increase consistency and productivity in front-end development, as well as to help get non-semantic utility classes out of markup.

## Installation

Pug is distributed as a Ruby gem called `compass-pug` and requires Compass `1.0+`. You can install it (and its dependencies) with the `gem` command:

    gem install compass-pug

Once the gem is installed, `require` it in your Compass project's config file (probably called `config.rb`):

    require 'compass-pug'

And import the library itself in your Sass/SCSS code:

    @import "pug";

## What's Included

For complete details, including function/mixin parameters, view the `stylesheets/pug/_functions.scss` and `stylesheets/pug/_mixins.scss` source files. And take a look the Variables below (or at `stylesheets/_pug.scss`) for various overridable configuration variables (define your own value for any of these prior to importing Pug).

### Sass Mixins

* `pug-aligncenter()`: Sets `display:block`, `clear:both` and auto l/r margin to horizontally center an element.
* `pug-alignleft()`: Sets `display:inline`, `float:left` and applies some right margin based on the configured horizontal unit.
* `pug-alignright()`: Sets `display:inline`, `float:right` and applies some left margin based on the configured horizontal unit.
* `pug-clearfix()`: Clearfix. Alias for `pug-micro-clearfix()`.
* `pug-dark-bg-with-light-text()`: Quickly apply bg, text and link colors to a selector appropriate for a dark background with light text.
* `pug-image-replacement()`: [Adapted from HTML5 Boilerplate's](http://html5boilerplate.com/) `.ir` class.
* `pug-light-bg-with-dark-text()`: Quickly apply bg, text and link colors to a selector appropriate for a light background with dark text.
* `pug-micro-clearfix()`: [Provides Nicolas Gallagher's Micro Clearfix](http://nicolasgallagher.com/micro-clearfix-hack/).
* `pug-placeholder-color()`: Generates cross-browser CSS (with selectors) for setting the color of input field placeholder text. Via [CSS Tricks](http://css-tricks.com/snippets/css/style-placeholder-text/).
* `pug-tab-size()`: Vendor-prefixed tab sizing. Use with elements such as `pre`.
* `pug-sr-only()`: Apply to an element to make it accessible only to screen readers. Optionally include `$focusable:true` to allow the element to be focusable when navigated to via the keyboard. [Adapted from Bootstrap 3](http://getbootstrap.com/css/#helper-classes-screen-readers).
* `pug-sr-only-focusable()`: *DEPRECATED (use `pug-sr-only($focusable:true).` instead)* Applies (optionally, and by default) `pug-sr-only()` and shows the element again when it's focused. [Adapted from Bootstrap 3](http://getbootstrap.com/css/#helper-classes-screen-readers).

### Sass Functions

* `pug-calculate-line-height()`: Calculate an appropriate line-height value that maintains vertical rhythm.
* `pug-round-up-to-nearest-vertical-unit()`: Round a size up to the nearest factor of a vertical unit (or of a sub-unit of that vertical unit). Parameters must use the same unit of measurement (rem, px, etc).
* `pug-strip-units()`: Strip unit of measurement from a numeric value. Ex: `10px` becomes `10`.
* `pug-units-match()`: Determine whether two or more values use the same unit of measurement (such as px, rem, etc). Similar to the Sass comparable() function but requires exact match (such as mm and mm, but not cm and mm).

### Variables

Below are the variables and their default values defined in `stylesheets/_pug.scss`. You can override any or all of these in your code by declaring them yourself *before* you import Pug (omit the `!default` flag shown on the definitions below if you do that).

    // Colors
    $pug-bg-color-light: #FFF !default;
    $pug-bg-color-dark: #202020 !default;

    // Darkish text colors used on light backgrounds.
    $pug-text-color-dark: #202020 !default;
    $pug-link-default-color-dark: #4183c4 !default;
    $pug-link-visited-color-dark: $pug-link-default-color-dark !default;
    $pug-link-hover-color-dark: lighten($pug-link-default-color-dark, 20%) !default;

    // Lightish text colors used on dark backgrounds.
    $pug-text-color-light: #FEFEFE !default;
    $pug-link-default-color-light: #9DC7F5 !default;
    $pug-link-visited-color-light: $pug-link-default-color-light !default;
    $pug-link-hover-color-light: lighten($pug-link-default-color-light, 20%) !default;

    // Tab size
    $pug-tab-size: 2 !default;

    // Vars related to vertical-rhythm.
    $pug-vr-base-font-size: 16px !default;
    $pug-vr-vertical-unit: 24px !default;
    $pug-vr-preferred-division: 0.5 !default;
    $pug-vr-line-height-minimum-difference-proportion: 0.25 !default;

    // Vars related to horizontal rhythm (gridding).
    $pug-hr-horizontal-unit: 10px !default;

## Development

### Generating a Release

* Update `README.md` with any new features or information required for usage
* Replace the list of variable definitions in `README.md` with the ones in `stylesheets/_pug.scss` to make sure they are in sync
* Update `s.version`, `s.date` and anything else that may need it in `compass-pug.gemspec`
* Run `gem build compass-pug.gemspec` in the root of the repository (this will generate a new `compass-pug-[VERSION].gem` file)
* Push that new file to `rubygems.org` with `gem push compass-pug-[VERSION].gem` (replace `[VERSION]` based on the actual name of the file)
