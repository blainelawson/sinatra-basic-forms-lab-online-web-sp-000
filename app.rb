require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  end
  post '/puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @months_old = params[:months_old]

    @puppy = Puppy.new(name: @name, breed: @breed, age: @months_old)

    erb :display_puppy
  end
end
