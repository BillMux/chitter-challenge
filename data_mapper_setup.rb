require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'lib/peep'

env = ENV['ENVIRONMENT']
DataMapper.setup(:default, "postgres://localhost:5432/chitter_#{env}")
DataMapper::Model.raise_on_save_failure = true
DataMapper.finalize
DataMapper.auto_upgrade!
