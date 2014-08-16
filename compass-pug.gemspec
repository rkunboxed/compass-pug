Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.0.5.1"
  s.date = "2014-08-16"

  # Gem Details
  s.name = "compass-pug"
  s.licenses = ['MIT']
  s.authors = ["Andrew Kamm"]
  s.summary = %q{A collection of mixins and functions for use in Sass/Compass projects.}
  s.description = %q{Pug is a collection of mixins and functions for use in Sass/Compass projects. It provides various helpers and utilities, some of which are adapted from CSS classes included in various HTML starter packages like Bootstrap and HTML5 Boilerplate. It aims to increase consistency and productivity in front-end development, as well as to help get non-semantic utility classes out of markup.}
  s.email = "ak@kamm.co"
  s.homepage = "https://github.com/fatleaf/compass-pug"

  # Gem Files
  s.files = %w(README.md)
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")

  # Gem Bookkeeping
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", ["~> 1.0"])
end
