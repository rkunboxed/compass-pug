Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.0.4"
  s.date = "2014-07-27"

  # Gem Details
  s.name = "compass-pug"
  s.authors = ["Andrew Kamm"]
  s.summary = %q{a collection of mixins for compass}
  s.description = %q{a collection of mixins for compass}
  s.email = "ak@kamm.co"
  s.homepage = "http://kamm.co/"

  # Gem Files
  s.files = %w(README.md)
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")

  # Gem Bookkeeping
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("sass", ["~> 3.3"])
  s.add_dependency("compass", [">= 1.0.0.alpha.21"])
end
