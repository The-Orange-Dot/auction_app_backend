class BuyerReviewsController < ApplicationController
  def index
    render json: BuyerReview.all, status: :ok
  end

  def create
    review = BuyerReview.create(buyer_review_params)
    if user.valid?
      render json: review, status: :created
    else
      redner json: {error: "Invalid input"}
    end
  end

  private

  def buyer_review_params
    params.permit(:id, :review, :rating, :user_id, :seller_id, :product_id)
  end
end
