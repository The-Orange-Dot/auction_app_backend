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
  render json: new_product, include: [:user]
  end

  def destroy
    item = Product.find_by(id: params[:id])
    if item
      if item.buyers.length != 0 || !nil
        buyer_array = item.buyers.split(", ")
        buyers_array_int = buyer_array.map{|i| i.to_i}
        buyers_array_int.each do |user_id|
          user = User.find_by(id: user_id)
          user.points += item.price / item.tickets
          user.update(points: user.points)
        end
      end
    item.destroy
    end
    render json: item
  end

end
