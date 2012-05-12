# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "derp/version"

Gem::Specification.new do |s|
  s.name        = "derp"
  s.version     = Derp::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Steve Klabnik"]
  s.email       = ["steve@steveklabnik.com"]
  s.homepage    = "http://steveklabnik.github.com/derp"
  s.summary     = %q{This gem retired, due to concerns about ableism.}
  s.description = %q{This gem retired, due to conerns about ableism. http://en.wikipedia.org/wiki/Ableism}

  s.add_development_dependency "rake"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
