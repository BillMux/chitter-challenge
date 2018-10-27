require 'pg'
p "Cleaning Database..."

connection = PG.connect(dbname: 'chitter_test')

connection.exec("TRUNCATE links;")
