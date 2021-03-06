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

    def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end