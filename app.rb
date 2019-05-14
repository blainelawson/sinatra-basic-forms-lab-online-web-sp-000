require_relative 'config/environment'

class App < Sinatra::Base

  post '/puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @months_old = params[:months_old]
binding.pry
    @puppy = Puppy.new(name: @name, breed: @breed, age: @months_old)

    erb :display_puppy
  end
end
