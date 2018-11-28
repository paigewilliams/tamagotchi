
class Tamagotchi

  attr_accessor(:name, :food_level, :attention_level, :sleep_level, :exercise_level)
  def initialize(name)
    @name = name
    @food_level = 10
    @attention_level = 10
    @sleep_level = 10
    @exercise_level = 10
  end

end
