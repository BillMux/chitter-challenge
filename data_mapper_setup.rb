require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'lib/peep'

ENV['ENVIRONMENT'] = 'development'
DataMapper.setup(:default, "postgres://localhost:5432/chitter_development")
DataMapper::Model.raise_on_save_failure = true
DataMapper.finalize
DataMapper.auto_upgrade!
