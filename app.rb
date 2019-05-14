require_relative 'config/environment'

class App < Sinatra::Base
  
  post '/puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
binding.pry
    @puppy = Puppy.new(name: @name, breed: @breed, age: @age)

    erb :display_puppy
  end
end
