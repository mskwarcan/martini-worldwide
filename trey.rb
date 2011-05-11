require 'sinatra'
require 'bundler'
Bundler.setup

get '/' do
  erb :home
end
