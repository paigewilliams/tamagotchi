require('pry')
require('rspec')
require('project')

describe(Tamagotchi) do
  describe("#initialize")do
  it("creates a new Tamagotchi")do
    my_pet = Tamagotchi.new("tucker")
    expect(my_pet.name).to(eq("tucker"))
    end
  end
  describe("#feed")do
  it("increased food level on Tamagotchi")do
    my_pet = Tamagotchi.new("tucker")
    my_pet.feed()
    expect(my_pet.food_level).to(eq(11))
    end
  end
  describe("#exercise")do
  it("increased food level on Tamagotchi")do
    my_pet = Tamagotchi.new("tucker")
    my_pet.exercise()
    expect(my_pet.exercise_level).to(eq(11))
    end
  end
  describe("#exercise")do
  it("increased food level on Tamagotchi")do
    my_pet = Tamagotchi.new("tucker")
    my_pet.exercise()
    expect(my_pet.exercise_level).to(eq(11))
    end
  end
  describe("#is_alive?")do
  it("checks to see if Tamagotchi is alive")do
    my_pet = Tamagotchi.new("tucker")
    expect(my_pet.is_alive?()).to(eq(true))
    end
  end
  describe("#to_sleep")do
  it("puts Tamagotchi to sleep")do
    my_pet = Tamagotchi.new("tucker")
    my_pet.to_sleep(1)
    expect(my_pet.sleep_level()).to(eq(20))
    end
  end
end
