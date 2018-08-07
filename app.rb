require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text_from_user = PigLatinizer.new(params[:user_phrase]) 
    erb :result
  end
end
