require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  # get 'pigLatinizer' do
  #   erb :user_input
  # end

  post '/piglatinize' do
    the_instance = PigLatinizer.new
    @latin_text = the_instance.piglatinize(params[:user_phrase])
    erb :result
  end


end
