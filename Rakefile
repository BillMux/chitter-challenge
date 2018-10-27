if ENV['RACK_ENV'] != 'production'
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new :spec

  task default: [:spec]
end

task :test_database_setup do
  require 'pg'
  p "Cleaning Database..."
  connection = PG.connect(dbname: 'chitter_test')
  connection.exec("TRUNCATE links;")
end
