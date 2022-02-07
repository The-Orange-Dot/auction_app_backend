class ProductsController < ApplicationController

  def index
    render json: Product.all, include: [:user]
  end

  def show
    render json: Product.all.find(params[:id]), include: [:user]
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
    )
  render json: new_product
  end

  def destroy
    item = Product.all.find(params[:id])
    item.destroy
    render json: item
  end

end
