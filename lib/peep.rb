require 'pg'

class Peep
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def self.all
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end
  end
end
