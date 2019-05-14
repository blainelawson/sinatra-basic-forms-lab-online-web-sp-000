require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @months_old = params[:age]
# binding.pry
    @puppy = Puppy.new(name: @name, breed: @breed, months_old: @months_old)

    erb :display_puppy
  end
end
