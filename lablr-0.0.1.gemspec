# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{lablr}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Hulihan Applications"]
  s.date = %q{2009-11-26}
  s.description = %q{Test}
  s.email = %q{craig@barkingiguana.com}
  s.extra_rdoc_files = ["History.txt", "LICENSE.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "LICENSE.txt", "Manifest.txt", "README.txt", "Rakefile", "init.rb", "lib/htmldoc.rb", "lib/htmldoc/version.rb", "setup.rb", "test/basic_test.rb", "test/generation_test.rb", "test/test_helper.rb"]
  s.homepage = %q{http://htmldoc.rubyforge.org}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{htmldoc}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A wrapper around HTMLDOC, a PDF generation utility}
  s.test_files = ["test/basic_test.rb", "test/generation_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
    else
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
