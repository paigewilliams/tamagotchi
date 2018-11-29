require('pry')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/project.rb')

get('/') do
  erb(:input)
end

post('/output') do
  name = params.fetch('name')
  pet = Tamagotchi.new(name)
  @name = Tamagotchi.name
  @food_level = Tamagotchi.food_level
  @attention_level = Tamagotchi.attention_level
  @sleep_level = Tamagotchi.sleep_level
  @exercise_level = Tamagotchi.exercise_level
  @sleep = Tamagotchi.sleep?
  erb(:output)
end

get('/feed') do
 Tamagotchi.feed()
 @name = Tamagotchi.name
 @food_level = Tamagotchi.food_level
 @attention_level = Tamagotchi.attention_level
 @sleep_level = Tamagotchi.sleep_level
 @exercise_level = Tamagotchi.exercise_level
 @sleep = Tamagotchi.sleep?
 erb(:output)
end

get('/exercise') do
 Tamagotchi.exercise()
 @name = Tamagotchi.name
 @food_level = Tamagotchi.food_level
 @attention_level = Tamagotchi.attention_level
 @sleep_level = Tamagotchi.sleep_level
 @exercise_level = Tamagotchi.exercise_level
   @sleep = Tamagotchi.sleep?
 erb(:output)
end

get("/attention")do
Tamagotchi.attention()
@name = Tamagotchi.name
@food_level = Tamagotchi.food_level
@attention_level = Tamagotchi.attention_level
@sleep_level = Tamagotchi.sleep_level
@exercise_level = Tamagotchi.exercise_level
  @sleep = Tamagotchi.sleep?
erb(:output)
end

get("/sleep")do
Tamagotchi.put_to_sleep()
Tamagotchi.to_sleep(1)
@name = Tamagotchi.name
@food_level = Tamagotchi.food_level
@attention_level = Tamagotchi.attention_level
@sleep_level = Tamagotchi.sleep_level
@exercise_level = Tamagotchi.exercise_level
@sleep = Tamagotchi.sleep?
erb(:output)
end

get("/wake_up")do
Tamagotchi.wake_up
@name = Tamagotchi.name
@food_level = Tamagotchi.food_level
@attention_level = Tamagotchi.attention_level
@sleep_level = Tamagotchi.sleep_level
@exercise_level = Tamagotchi.exercise_level
@sleep = Tamagotchi.sleep?
erb(:output)
end
