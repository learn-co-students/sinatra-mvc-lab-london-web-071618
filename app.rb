require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_text = params["user_phrase"]
    if user_text != nil
      obj = PigLatinizer.new
      @result_piglatin = obj.piglatinize(user_text)
    else
      status 200
    end
    erb :piglatinize
  end

end
