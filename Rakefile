require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/packagetask'
require 'rake/gempackagetask'
require 'rake/contrib/rubyforgepublisher'

require "./lib/capistrano/ext/version"

PKG_NAME      = "capistrano-ext"
PKG_BUILD     = ENV['PKG_BUILD'] ? '.' + ENV['PKG_BUILD'] : ''
PKG_VERSION   = Capistrano::Ext::Version::STRING + PKG_BUILD
PKG_FILE_NAME = "#{PKG_NAME}-#{PKG_VERSION}"

GEM_SPEC = eval(File.read("#{File.dirname(__FILE__)}/#{PKG_NAME}.gemspec"))

Rake::GemPackageTask.new(GEM_SPEC) do |p|
  p.gem_spec = GEM_SPEC
  p.need_tar = true
  p.need_zip = true
  p.package_files.include 'README', 'MIT-LICENSE', 'setup.rb', 'ChangeLog'
end

desc "Build the RDoc API documentation"
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = "doc"
  rdoc.title    = "Capistrano Extensions -- A collection of tasks and methods for capistrano"
  rdoc.options << '--line-numbers --inline-source --main README'
  rdoc.rdoc_files.include 'README'
  rdoc.rdoc_files.include 'lib/**/*.rb'
  rdoc.template = "jamis"
end
