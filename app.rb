require_relative 'config/environment'
require_relative 'models/PigLatinizer'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

end
