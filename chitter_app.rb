require 'sinatra/base'

class ChitterApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/peep' do
    erb :peep
  end

  post '/peep' do

  end

  run! if app_file == $0
end
