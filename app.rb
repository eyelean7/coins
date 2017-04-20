require('sinatra')
require('sinatra/reloader')
require('./lib/coins')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @change = params.fetch('coins').to_i.coins()
  erb(:result)
end
