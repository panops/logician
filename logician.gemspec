Gem::Specification.new do |gem|
  gem.name = 'logician'
  gem.version = '0.0.1alpha1'

  gem.authors = ["PanOps Platform Contributors"]
  gem.email = ["engineering@panops.org"]

  gem.summary = "A Datalog-inspired fact analysis and deductive query system."
  gem.description = gem.summary

  gem.homepage = 'http://www.panops.org/'

  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename f }
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split "\n"
  gem.files = `git ls-files`.split "\n"

  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 1.9.3'
  gem.required_rubygems_version = Gem::Requirement.new '>= 1.8.17'

  gem.add_development_dependency 'rake', '~> 0.9.2'
  gem.add_development_dependency 'mocha', '~> 0.10.0'
  gem.add_development_dependency 'rspec', '~> 2.7.0'
  gem.add_development_dependency 'yard', '~> 0.7'
  gem.add_development_dependency 'rdiscount', '~> 1.6.8'
  gem.add_development_dependency 'autotest', '~> 4.4.6'
end
