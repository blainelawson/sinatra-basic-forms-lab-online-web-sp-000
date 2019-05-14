class Puppy
  attr_reader :name, :breed, :months_old

  def initialize(name:, breed:, months_old: nil)
    binding.pry
    @name = name
    @breed = breed
    @age = age
  end
end
