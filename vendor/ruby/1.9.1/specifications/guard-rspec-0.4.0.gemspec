# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{guard-rspec}
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thibaud Guillaume-Gentil"]
  s.date = %q{2011-06-05}
  s.description = %q{Guard::RSpec automatically run your specs (much like autotest).}
  s.email = ["thibaud@thibaud.me"]
  s.files = ["lib/guard/rspec/formatter.rb", "lib/guard/rspec/formatters/notification_rspec.rb", "lib/guard/rspec/formatters/notification_spec.rb", "lib/guard/rspec/inspector.rb", "lib/guard/rspec/runner.rb", "lib/guard/rspec/templates/Guardfile", "lib/guard/rspec/version.rb", "lib/guard/rspec.rb", "LICENSE", "README.md"]
  s.homepage = %q{http://rubygems.org/gems/guard-rspec}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{guard-rspec}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Guard gem for RSpec}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, [">= 0.4.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6"])
    else
      s.add_dependency(%q<guard>, [">= 0.4.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, ["~> 2.6"])
    end
  else
    s.add_dependency(%q<guard>, [">= 0.4.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, ["~> 2.6"])
  end
end
