class ProductsController < ApplicationController

  def index
    json_response(Product.all.order("id desc"))
  end

  def show
    json_response(Product.all.find(params[:id]))
  end

  def create
    new_product = Product.create(
      category: params[:category],
      name: params[:name],
      descriptionPreview: params[:descriptionPreview],
      description: params[:description],
      images: params[:images],
      price: params[:price],
      ticketsRemaining: params[:tickets],
      tickets: params[:tickets],
      keywords: params[:keywords],
      user_id: params[:user_id],
      buyers: nil,
      finished: 0
    )
    # json_response(new_product)
    json_response(Product.all.order("id desc"))
  end

  def delete
    item = Product.all.find(params[:id])
    item.destroy
  end

  def take_ticket
    item = Product.all.find(params[:id])
    item.update(
      ticketsRemaining: params[:ticketsRemaining]
    )
  end

  def find_seller
    user_id = Product.all.find(params[:id]).user_id
    json_response(User.all.find(user_id))
  end

end
