require 'dotenv/load'
require_relative 'data_mapper_setup'
require_relative 'lib/peep'
require 'sinatra/base'

class ChitterApp < Sinatra::Base
  enable :sessions

  get '/' do
    @peeps = Peep.all.reverse
    erb :index
  end

  get '/peep' do
    erb :peep
  end

  post '/peep' do
    Peep.create(
      text: params['peep-text'],
      time: Time.now.strftime("%l:%M%P, %a %e %b")
    )
    redirect '/'
  end

  run! if app_file == $0
end
