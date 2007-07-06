require './lib/capistrano/ext/version'

Gem::Specification.new do |s|

  s.name = 'capistrano-ext'
  s.version = PKG_VERSION
  s.platform = Gem::Platform::RUBY
  s.summary = <<-DESC.strip.gsub(/\n/, " ")
    Capistrano Extensions is a set of useful task libraries and methods that
    other developers may reference in their own recipe files.
  DESC

  s.files = Dir.glob("lib/**/*")
  s.files << 'ChangeLog' << 'README' << 'MIT-LICENSE'
  s.require_path = 'lib'

  s.add_dependency 'capistrano', ">= 1.0.0"

  s.author = "Jamis Buck"
  s.email = "jamis@37signals.com"
  s.homepage = "http://www.capify.com"

end
