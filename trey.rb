require 'sinatra'
require 'bundler'
Bundler.setup

get '/' do
  erb :home
end

get '/features' do
  erb :features
end

get '/applications' do
  erb :applications
end

get '/specifications' do
  erb :specifications
end

get '/resellers' do
  erb :resellers
end

get '/contact' do
  erb :contact
end