class SellerReviewsController < ApplicationController
  def index
    render json: SellerReview.all, include: [:buyer], status: :ok
  end


  def create
    review = SellerReview.create(seller_review_params)
    if user.valid?
      render json: review, status: :created
    else
      redner json: {error: "Invalid input"}
    end
  end

  private

  def seller_review_params
    params.permit(:id, :review, :rating, :user_id, :buyer_id, :product_id)
  end

end
