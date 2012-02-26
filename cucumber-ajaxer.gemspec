# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'cucumber-ajaxer/version'

Gem::Specification.new do |s|
  s.name        = 'cucumber-ajaxer'
  s.version     = Cucumber::Ajaxer::VERSION
  s.authors     = ['Chalo Fernandez']
  s.email       = %w('chalofa@gmail.com')
  s.homepage    = 'http://github.com/chalofa/cucumber-ajaxer'
  s.summary     = 'Cucumber should wait for AJAX calls in @javascript Scenarios'
  s.description = 'Cucumber should wait for AJAX calls in @javascript Scenarios'

  s.rubyforge_project = 'cucumber-ajaxer'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)

  s.add_development_dependency 'rspec'
end
