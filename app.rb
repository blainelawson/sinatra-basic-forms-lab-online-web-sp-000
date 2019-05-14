require_relative 'config/environment'

class App < Sinatra::Base
  post '/puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    
    erb :display_puppy
  end
end
