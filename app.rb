require 'active_record'
require 'sinatra'
require 'sinatra/reloader'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jesse",
  :password => "",
  :database => "clowns"
)

class Clown < ActiveRecord::Base
end

get '/' do
  @clowns = Clown.all
  erb :index
end

get '/new' do
  erb :new
end

post '/new' do
  @clown = Clown.create params
  redirect '/'
end

