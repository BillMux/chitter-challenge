require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'lib/peep'

environment = ENV.fetch('ENVIRONMENT') { 'development' }
DataMapper.setup(:default, "postgres://localhost:5432/chitter_#{environment}")
DataMapper::Model.raise_on_save_failure = true
DataMapper.finalize
DataMapper.auto_upgrade!
