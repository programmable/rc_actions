# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rc_actions}
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ilia Ablamonov", "Artem Orlov"]
  s.date = %q{2009-04-28}
  s.description = %q{Better actions for resources_controller plugin.}
  s.email = %q{pro@grammable.com}
  s.files = [
      "README",
      "lib/rc_actions",
      "lib/rc_actions/actions.rb",
      "lib/rc_actions/common_actions.rb",
      "lib/rc_actions.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/programmable/rc_actions}
  s.rdoc_options = ["--quiet", "--main=README", "--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.summary = %q{Better actions for resources_controller plugin.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 2.3.2"])
    else
      s.add_dependency(%q<rails>, [">= 2.3.2"])
    end
  else
    s.add_dependency(%q<rails>, [">= 2.3.2"])
  end
end
