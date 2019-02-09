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
end