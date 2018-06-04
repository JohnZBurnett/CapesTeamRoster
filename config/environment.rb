require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'

require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/capes.sqlite"
)

require_relative "../cape.rb"
require_relative "../city.rb"
require_relative "../menu.rb"
require_relative "../team.rb"
require_relative "../power.rb"
require_relative "../cape_power.rb"
