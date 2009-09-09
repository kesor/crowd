# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{crowd}
  s.version = "0.5.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Olli Helenius", "Evgeny Zislis", "Jason Rimmer", "Daniel Morrison"]
  s.date = %q{2009-09-09}
  s.description = %q{A client for Atlassian Crowd}
  s.email = %q{liff@iki.fi}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["History.txt",
             "Manifest.txt",
             "lib/crowd.rb",
             "lib/crowd",
             "lib/crowd/http",
             "lib/crowd/http/request.rb",
             "lib/crowd/http/response.rb",
             "lib/crowd/http/sso.rb",
             "lib/crowd/soap",
             "lib/crowd/soap/crowd-1.6.1.wsdl",
             "lib/crowd/soap/default.rb",
             "lib/crowd/soap/driver.rb",
             "lib/crowd/soap/mapping_registry.rb",
             "lib/crowd/soap/SecurityServerClient.rb",
             "spec",
             "spec/crowd_spec.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/liff/crowd}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{crowd}
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{A client for Atlassian Crowd.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<soap4r>, [">= 1.5.8"])
    else
      s.add_dependency(%q<soap4r>, [">= 1.5.8"])
    end
  else
    s.add_dependency(%q<soap4r>, [">= 1.5.8"])
  end
end
