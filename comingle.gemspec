# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{comingle}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steven Soroka"]
  s.date = %q{2009-07-22}
  s.email = %q{ssoroka78@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/comingle.rb",
     "spec/comingle_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/ssoroka/comingle}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{simple active_resource API to mingle}
  s.test_files = [
    "spec/comingle_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
