require 'sinatra/base'

class ChitterApp < Sinatra::Base
  get '/' do
    'Chitter'
  end
end
