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
end
