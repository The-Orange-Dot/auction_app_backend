class SellerReviewsController < ApplicationController
  def index
    render json: SellerReview.all, status: :ok
  end

end
