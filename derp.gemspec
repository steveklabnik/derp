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
  s.summary     = %q{This gem gives you String#to_derp.}
  s.description = %q{This gem gives you String#to_derp, which converts your string to morse code, and then encodes dots and dashes via herps and derps.}

  s.add_development_dependency "watchr"
  s.add_development_dependency "rocco"
  s.add_development_dependency "rake"

  s.add_dependency "require_relative" if RUBY_VERSION =~ /1\.8/
  s.add_dependency "minitest" if RUBY_ENGINE =~ /jruby/

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
