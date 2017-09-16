require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/tamagotchi')
require('./lib/nerd')
require('pry')

Tamagotchi.new 'Timmy'
Tamagotchi.new 'Thomas'

get('/') do
  erb(:index)
end

get('/tamagotchi/') do
  erb(:index)
end

post('/tamagotchi') do
  @tamagotchi = Tamagotchi.new(params['name'])
  erb(:show)
end

get('/tamagotchi/new') do
  erb(:new)
end

get('/tamagotchi/:id') do
  @tamagotchi = Nerd.find(params['id'].to_i)
  erb(:show)
end

