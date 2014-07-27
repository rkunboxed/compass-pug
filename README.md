# Pug for Compass

A collection of Sass functions and mixins for use in Compass projects. It currently requires Sass `>=3.3` and Compass `>= 1.0.0.alpha.21`.

## Installation

Pug is distributed as a Ruby gem called `compass-pug`. You can install it with the `gem` command:

    gem install compass-pug

Once the gem is installed, `require` it in your Compass project's config file:

    require 'compass-pug'

And import the library itself in your Sass/SCSS code:

    @import "pug";

## What's Included

For complete details, including function/mixin parameters, view the `stylesheets/pug/_functions.scss` and `stylesheets/pug/_mixins.scss` source files. And take a look at `stylesheets/_pug.scss` for various overridable configuration variables (define your own value for any of these prior to importing Pug).

### Sass Mixins

* `pug-dark-bg-with-light-text()`: Quickly apply bg, text and link colors to a selector appropriate for a dark background with light text.
* `pug-light-bg-with-dark-text()`: Quickly apply bg, text and link colors to a selector appropriate for a light background with dark text.
* `pug-micro-clearfix()`: [Provides Nicolas Gallagher's Micro Clearfix](http://nicolasgallagher.com/micro-clearfix-hack/).
* `pug-placeholder-color()`: Generates cross-browser CSS (with selectors) for setting the color of input field placeholder text. Via [CSS Tricks](http://css-tricks.com/snippets/css/style-placeholder-text/).
* `pug-tab-size()`: Vendor-prefixed tab sizing. Use with elements such as `pre`.
* `pug-sr-only()`: Apply to an element to make it accessible only to screen readers. [Adapted from Bootstrap 3](http://getbootstrap.com/css/#helper-classes-screen-readers).
* `pug-sr-only-focusable()`: Applies (optionally) `pug-sr-only` and shows the element again when it's focused. [Adapted from Bootstrap 3](http://getbootstrap.com/css/#helper-classes-screen-readers).

### Sass Functions

* `pug-calculate-line-height()`: Calculate an appropriate line-height value that maintains vertical rhythm.
* `pug-round-up-to-nearest-vertical-unit()`: Round a size up to the nearest factor of a vertical unit (or of a sub-unit of that vertical unit). Parameters must use the same unit of measurement (rem, px, etc).
* `pug-strip-units()`: Strip unit of measurement from a numeric value. Ex: `10px` becomes `10`.
* `pug-units-match()`: Determine whether two or more values use the same unit of measurement (such as px, rem, etc). Similar to the Sass comparable() function but requires exact match (such as mm and mm, but not cm and mm).
