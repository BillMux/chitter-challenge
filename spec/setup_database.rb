def setup_database_and_clear
  connection = DataMapper.setup(:default, "postgres://localhost:5432/chitter_test")
  connection.execute('TRUNCATE peeps;')
end
