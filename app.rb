require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require 'pry'
require './models/item.rb'

get '/' do
  @total = Item.sum(:price)
  @items = Item.all
  @categories = Category.all
  erb :index
end

get '/ask' do
  @test = "Q1"
  @text = "これが質問やで"*10
  erb :ask
end

post '/create' do
  Item.create({
    title: params[:title],
    price: params[:price],
    category_id: params[:category]
  })

  redirect '/'
end