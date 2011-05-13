require 'sinatra'
require 'bundler'
Bundler.setup

get '/' do
  erb :home
end

get '/features' do
  @features = true
  erb :features
end

get '/applications' do
  @apps = true
  erb :applications
end

get '/specifications' do
  @specs = true
  erb :specifications
end

get '/resellers' do
  @resell = true
  erb :resellers
end

get '/contact' do
  erb :contact
end