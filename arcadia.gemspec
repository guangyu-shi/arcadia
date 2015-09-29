# gemspec for Arcadia
# Antonio Galeone (antonio-galeone@rubyforge.org)
 	
require 'rubygems'
  SPEC = Gem::Specification.new do |s|
  s.name = "arcadia"
  s.version = "1.1.1"
  s.date = "2015-09-29"
  s.author = "Antonio Galeone"
  s.email = "support@arcadia-ide.org"
  s.homepage = "http://www.arcadia-ide.org"
  s.rubyforge_project = "arcadia"
  s.license = 'Ruby'
  s.platform = Gem::Platform::RUBY
  s.description = "Arcadia IDE"
  s.summary = "Light Editor IDE written in Ruby using the classic tcl/tk GUI toolkit."
  candidates = Dir.glob("{lib,ext/*,tcl}/**/*")
  candidates << "README.md"
  candidates << "bin/arcadia"
  candidates << "bin/arcadia.bat"
  candidates << "bin/arc"
  candidates << "conf/arcadia.conf"
  candidates << "conf/arcadia.init.rb"
  candidates << "conf/arcadia.res.rb"
  candidates << "conf/theme-dark.conf"
  candidates << "conf/theme-dark.res.rb"
  candidates << "conf/LC/en-UK.LANG"
  candidates << "conf/LC/ru-RU.LANG"
  s.files =  candidates.delete_if do |item|
      item.include?("CVS") || item.include?("rdoc")|| item.include?("cvs")|| item.include?(".git")
  end
  s.bindir = "bin"
  s.executables << "arcadia"
  s.executables << "arc"
  s.default_executable = 'arcadia'
  s.rdoc_options << '--title' << 'Arcadia Documentation' <<  '--main'  << 'README' << '-q'
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency("coderay",">= 1.0.3")
end