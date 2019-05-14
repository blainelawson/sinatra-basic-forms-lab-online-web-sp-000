class Puppy
  attr_reader :name, :breed, :age

  def initialize(*{name: nil, breed: nil, months_old: nil})
    binding.pry
    @name = name
    @breed = breed
    @age = age
  end
end
