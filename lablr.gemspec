# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "lablr"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Hulihan Applications", "Dave Hulihan"]
  s.date = "2012-01-16"
  s.description = "A Ruby Gem for generating printable labels in a variety of formats(pdf, html, etc.) and templates(Avery, etc.)."
  s.email = "dave@hulihanapplications.com"
  s.extra_rdoc_files = [
    "README.textile"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "README.textile",
    "Rakefile",
    "VERSION",
    "assets/layouts/label.html.erb",
    "assets/templates/_avery_5163.erb",
    "init.rb",
    "lablr.gemspec",
    "lib/lablr.rb",
    "lib/lablr/template.rb",
    "lib/lablr/template_style.rb",
    "spec/fixtures/content.html",
    "spec/lib/lablr_spec.rb",
    "spec/spec_helper.rb",
    "test.rb",
    "vendor/gems/htmldoc/History.txt",
    "vendor/gems/htmldoc/LICENSE.txt",
    "vendor/gems/htmldoc/Manifest.txt",
    "vendor/gems/htmldoc/README.txt",
    "vendor/gems/htmldoc/Rakefile",
    "vendor/gems/htmldoc/VERSION",
    "vendor/gems/htmldoc/init.rb",
    "vendor/gems/htmldoc/lib/htmldoc.rb",
    "vendor/gems/htmldoc/lib/htmldoc/version.rb",
    "vendor/gems/htmldoc/setup.rb",
    "vendor/gems/htmldoc/test/basic_test.rb",
    "vendor/gems/htmldoc/test/generation_test.rb",
    "vendor/gems/htmldoc/test/test_helper.rb"
  ]
  s.homepage = "http://github.com/hulihanapplications/lablr"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "Generate printable labels with Ruby!"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<htmldoc-hulihanapplications>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<htmldoc-hulihanapplications>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<htmldoc-hulihanapplications>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

