require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

require './models/item.rb'

get '/' do
  @total = Item.sum(:price)
  @items = Item.all
  @categories = Category.all
  erb :index
end

post '/create' do
  Item.create({
    title: params[:title],
    price: params[:price],
    category_id: params[:category]
  })

  redirect '/'
end