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
  @contact = true
  erb :contact
end

post '/email' do
    require 'pony'
    Pony.mail(
          :from => "contact@martini-worldwide.com",
          :to => 'innovation@martini-worldwide',
          :subject => "Inquiry",
          :body => erb(:email, :layout => false),
          :port => '587',
          :via => :smtp,
          :via_options => { 
            :address        => 'smtp.sendgrid.net',
            :port           => '587',
            :authentication => :plain,
            :user_name      => ENV['SENDGRID_USERNAME'],
            :password       => ENV['SENDGRID_PASSWORD'],
            :domain         => 'heroku.com',
            :enable_starttls_auto => true
          })
    @sent = true
    erb :contact
end