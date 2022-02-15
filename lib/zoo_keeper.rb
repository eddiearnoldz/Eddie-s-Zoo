require_relative '../lib/animal'
require_relative '../lib/food'

class ZooKeeper

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def feed(animal, food)
    animal.eat(food)
  end

  def play(animal, time)
    animal.played(time)
  end

  def wash(animal)
    animal.washed
  end

  def bedtime(animal)
    animal.sleepy
  end

end