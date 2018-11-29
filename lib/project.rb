
class Tamagotchi

  attr_accessor(:name, :food_level, :attention_level, :sleep_level, :exercise_level)

  def initialize(name)
    @@name = name
    @@food_level = 10
    @@attention_level = 10
    @@sleep_level = 10
    @@exercise_level = 10
    @@sleep = false
  end

  def self.feed()
    @@food_level += 1
  end
  def self.attention()
    @@attention_level += 1
  end

  def self.exercise()
    @@exercise_level += 1
    @@food_level -= 2
  end
  def self.is_alive?()
     @@food_level > 0
  end

  def self.to_sleep(time)
    start_time = Time.now
    seconds = time * 60
    end_time = start_time + seconds
    while Time.now < end_time && @@sleep == true
      if Time.now == start_time + 1
        @@sleep_level += 1
        start_time += 1
      end
    end
    # @@sleep = false
  end

  def self.wake_up
    @@sleep = false
  end

  def self.food_level
    @@food_level
  end
  def self.attention_level
    @@attention_level
  end
  def self.sleep_level
    @@sleep_level
  end
  def self.exercise_level
    @@exercise_level
  end
  def self.name
    @@name
  end
  def self.sleep?
    @@sleep
  end
  def self.put_to_sleep
    @@sleep = true
  end
end
