class Owner
  # code goes here
  Owners = []

  attr_accessor :pets, :name
  attr_reader :species

  def self.all
    Owners
  end

  def self.count
    Owners.size
  end

  def self.reset_all
    Owners.clear
  end
  
    def initialize(species)
    @species = species
    Owners << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
 end

  def say_species
  "I am a #{species}."
  end

  def name
    @name
  end
  
    def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end


end