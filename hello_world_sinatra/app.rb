require 'bundler'
require 'sinatra'
Bundler.require


get '/hello' do

  '<h1>Bonjour, monde !</h1>'
end
