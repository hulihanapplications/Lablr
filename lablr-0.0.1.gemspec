# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{lablr}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Hulihan Applications"]
  s.cert_chain = ["/aqpwr/.ssl/gem/gem-public_cert.pem"]
  s.date = %q{2010-11-22}
  s.description = %q{A Ruby Gem for generating printable labels in a variety of formats(pdf, html, etc.) and templates.}
  s.email = %q{dave@hulihanapplications.com}
  s.extra_rdoc_files = ["README.textile", "lib/lablr.rb"]
  s.files = ["README.textile", "Rakefile", "assets/layouts/label.html.erb", "assets/templates/_avery_5163.erb", "init.rb", "lablr-0.0.1.gemspec", "lib/lablr.rb", "test.rb", "Manifest", "lablr.gemspec"]
  s.homepage = %q{https://github.com/hulihanapplications/Lablr}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Lablr", "--main", "README.textile"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{lablr}
  s.rubygems_version = %q{1.3.7}
  s.signing_key = %q{/aqpwr/.ssl/gem/gem-private_key.pem}
  s.summary = %q{A Ruby Gem for generating printable labels in a variety of formats(pdf, html, etc.) and templates.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<htmldoc>, [">= 0.2.3"])
    else
      s.add_dependency(%q<htmldoc>, [">= 0.2.3"])
    end
  else
    s.add_dependency(%q<htmldoc>, [">= 0.2.3"])
  end
end
