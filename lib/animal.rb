require_relative '../lib/food'

class Animal

attr_reader :name, :hunger, :health, :energy, :asleep

  def initialize(name, hunger = 10)
    @name = name
    @hunger = hunger
    @health = 10
    @energy = 10
    @asleep = false
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
    @health += time
    @energy -= 2
  end

  def washed
    @health += 2
  end

  def sleepy
    if @asleep == true
      "Shhhh...#{@name} is already asleep"
    elsif @energy > 6
      "#{@name} has too much energy!"
    else
      @asleep = true
   end
  end

  def ageing
    until @health == 0
      if @health > 1 
        sleep 1
         @health -= 1
      else
        "#{@name} is dead"
       break
      end
    end
  end

end