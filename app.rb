require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  get '/piglatinize' do 
    to_piglatinize = PigLatinizer.new
    @piglatin = to_piglatinize(params[:user_phrase])

    erb: results
  end

end
