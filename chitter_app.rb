require 'sinatra/base'

class ChitterApp < Sinatra::Base
  enable :sessions

  get '/' do
    @peeps = [
      'test',
      'test, again'
    ]
    erb :index
  end

  get '/peep' do
    erb :peep
  end

  post '/peep' do
    redirect '/'
  end

  run! if app_file == $0
end
