require 'rubygems'
require 'bundler'

# Setup load paths
Bundler.require
$: << File.expand_path('../', __FILE__)
$: << File.expand_path('../lib', __FILE__)

# Require base
require 'sinatra/base'
require 'sinatra/activerecord'
require 'active_support/core_ext/string'
require 'active_support/core_ext/array'
require 'active_support/core_ext/hash'
require 'active_support/json'

# Add database

libraries = Dir[File.expand_path('../lib/**/*.rb', __FILE__)]
libraries.each do |path_name|
  require path_name
end

require 'app/extensions'
require 'app/models'
require 'app/helpers'
require 'app/routes'

module Blog
  class App < Sinatra::Application
    configure do
      set :root, Dir.pwd
      set :views, 'app/views'

      set :database, "sqlite3:myblogdb.sqlite3"

      disable :method_override
      disable :static
    end

    use Rack::Deflater
    use Rack::Standards

    use Routes::Static

    unless settings.production?
      use Routes::Assets
    end

    use Routes::Posts
  end
end

include Blog::Models
