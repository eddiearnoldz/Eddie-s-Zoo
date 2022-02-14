class Food

  attr_reader :name, :rotten, :nutrition_value
  
  def initialize(name, nutrition_value)
    @name = name
    @nutrition_value = nutrition_value
    @rotten = rand(10) > 9
  end

end