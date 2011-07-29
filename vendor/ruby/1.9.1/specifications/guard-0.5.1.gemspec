# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{guard}
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thibaud Guillaume-Gentil"]
  s.date = %q{2011-07-15}
  s.default_executable = %q{guard}
  s.description = %q{Guard is a command line tool to easily handle events on file system modifications.}
  s.email = ["thibaud@thibaud.me"]
  s.executables = ["guard"]
  s.files = ["bin/guard", "images/failed.png", "images/pending.png", "images/success.png", "lib/guard/cli.rb", "lib/guard/dsl.rb", "lib/guard/dsl_describer.rb", "lib/guard/guard.rb", "lib/guard/interactor.rb", "lib/guard/listener.rb", "lib/guard/listeners/darwin.rb", "lib/guard/listeners/linux.rb", "lib/guard/listeners/polling.rb", "lib/guard/listeners/windows.rb", "lib/guard/notifier.rb", "lib/guard/templates/Guardfile", "lib/guard/ui.rb", "lib/guard/version.rb", "lib/guard/watcher.rb", "lib/guard.rb", "CHANGELOG.md", "LICENSE", "man/guard.1", "man/guard.1.html", "README.md"]
  s.homepage = %q{https://github.com/guard/guard}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{guard}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Guard keeps an eye on your file modifications}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 0.3.1"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.14.6"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_dependency(%q<guard-rspec>, ["~> 0.3.1"])
      s.add_dependency(%q<thor>, ["~> 0.14.6"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.6.0"])
    s.add_dependency(%q<guard-rspec>, ["~> 0.3.1"])
    s.add_dependency(%q<thor>, ["~> 0.14.6"])
  end
end
