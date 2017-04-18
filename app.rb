require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')

get('/') do
  erb(:index)
end

get('/score') do
  @word = params.fetch('word')
  @score = @word.scrabble()
  erb(:score)
end
