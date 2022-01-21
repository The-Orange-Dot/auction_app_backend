class ProductsController < ApplicationController

  def index
    json_response(Product.all)
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
    json_response(new_product)
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

end
