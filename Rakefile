#!/usr/bin/env rake
require 'sinatra/activerecord/rake'
require './app'

task :app do
  require './app'
end

Dir[File.dirname(__FILE__) + "/lib/tasks/*.rb"].sort.each do |path|
  require path
end