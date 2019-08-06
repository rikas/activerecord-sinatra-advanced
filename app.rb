require_relative 'config/application'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

get '/' do
  @restaurants = Restaurant.all
  @cities = City.by_name

  # render the view under views/index.erb
  erb :index
end

get '/details/:id' do
  id = params[:id]

  @restaurant = Restaurant.find(id)

  # render the view under views/details.erb
  erb :details
end

# TODO: this shouldn't be a GET method!
get '/upvote/:id' do
  id = params[:id]

  @restaurant = Restaurant.find(id)
  @restaurant.votes += 1
  @restaurant.save

  erb :details
end

post '/create_restaurant' do
  name = params[:name]

  city = City.find(params[:city_id])

  restaurant = Restaurant.new(name: name)
  restaurant.city = city
  restaurant.save

  # Restaurant.create(name: name, city: city)

  redirect '/'
end

