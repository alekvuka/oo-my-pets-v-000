
require 'pry'

class Owner

  @@all_owners = Array.new

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all_owners.push(self)

    @pets = Hash.new
    @pets[:cats] = Array.new
    @pets[:dogs] = Array.new
    @pets[:fishes] = Array.new
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a human."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes].push(new_fish)
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats].push(new_cat)
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs].push(new_dog)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end




#--------------------Class Methods------------------------------
  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.count
  end

  def self.reset_all
    @@all_owners.clear
  end

  def self.new=(name)
    new_owner = Owner.new(name)
  end

end
