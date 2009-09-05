$CLASSPATH << 'inc/log4j-1.2.12.jar'
$CLASSPATH << 'inc/servlet-api-2.5.jar'

require 'rubygems'
require 'rubygems/specification'
require 'rake'
require 'rake/gempackagetask'
require 'spec/rake/spectask'

GEM = "rspec-vraptor"
GEM_VERSION = "0.9.8"
SUMMARY = "RSpec for VRaptor Sexy/Nice URLs"
AUTHOR = "Diego Carrion"
EMAIL = "dc.rec1@gmail.com"
HOMEPAGE = "http://www.diegocarrion.com"

spec = Gem::Specification.new do |s|
  s.name = GEM
  s.version = GEM_VERSION
  s.platform = Gem::Platform::RUBY
  s.summary = SUMMARY
  s.require_paths = ['lib']
  s.files = FileList['lib/**/*.rb','[A-Z]*'].to_a

  s.author = AUTHOR
  s.email = EMAIL
  s.homepage = HOMEPAGE

  s.rubyforge_project = GEM # GitHub bug, gem isn't being build when this miss
end

Spec::Rake::SpecTask.new('spec') do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = %w(--color)
end

task :set_sexy do
  $CLASSPATH << 'inc/vraptor-2.6.3.jar'
  $CLASSPATH << 'inc/picocontainer-1.3.jar'
end

task :set_nice do
  $CLASSPATH << 'inc/vraptor-2.6.0.jar'
  $CLASSPATH << 'inc/picocontainer-2.7.jar'
end

desc "Run specs for VRaptor Nice URLs"
task :'spec:nice' => [:set_nice, :spec]

desc "Run specs for VRaptor Sexy URLs"
task :'spec:sexy' => [:set_sexy, :spec]

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

desc "Install the gem locally"
task :install => [:package] do
  sh %{sudo gem install pkg/#{GEM}-#{GEM_VERSION}}
end

desc "Create a gemspec file"
task :make_spec do
  File.open("#{GEM}.gemspec", "w") do |file|
    file.puts spec.to_ruby
  end
end
