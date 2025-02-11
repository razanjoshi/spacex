# frozen_string_literal: true

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))

if ENV['CI']
  require 'coveralls'
  Coveralls.wear!
else
  require 'pry'
  require 'simplecov'
  SimpleCov.start
end

require 'rubygems'
require 'rspec'
require 'spacex'

Dir[File.join(File.dirname(__FILE__), 'support', '**/*.rb')].sort.each do |file|
  require file
end
