require 'food'

class Animal

attr_reader :name, :hunger, :health

  def initialize(name, hunger)
    @name = name
    @hunger = hunger
    @health = 10
  end

  def eat(food)
    if food.rotten == false
      @hunger -= food.nutrition_value
    else
      @hunger -= (food.nutrition_value)/2
      @health -= 2
    end
  end

  def played(time)
    
  end

end