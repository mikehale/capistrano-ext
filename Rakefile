require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/packagetask'
require 'rake/gempackagetask'
require 'rake/contrib/rubyforgepublisher'

require "./lib/switchtower/ext/version"

PKG_NAME      = "switchtower-ext"
PKG_BUILD     = ENV['PKG_BUILD'] ? '.' + ENV['PKG_BUILD'] : ''
PKG_VERSION   = SwitchTower::Ext::Version::STRING + PKG_BUILD
PKG_FILE_NAME = "#{PKG_NAME}-#{PKG_VERSION}"

GEM_SPEC = eval(File.read("#{File.dirname(__FILE__)}/#{PKG_NAME}.gemspec"))

Rake::GemPackageTask.new(GEM_SPEC) do |p|
  p.gem_spec = GEM_SPEC
  p.need_tar = true
  p.need_zip = true
end

desc "Build the RDoc API documentation"
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = "doc"
  rdoc.title    = "SwitchTower Extensions -- A collection of tasks and methods for switchtower"
  rdoc.options << '--line-numbers --inline-source --main README'
  rdoc.rdoc_files.include 'README'
  rdoc.rdoc_files.include 'lib/**/*.rb'
  rdoc.template = "jamis"
end
