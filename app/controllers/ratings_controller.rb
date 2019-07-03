class RatingsController < ApplicationController
	def index
	end
	def new
	end
	def create
	@user = current_user.id
	rating = Rating.new(rating_params)
	@product = params[:rating][:product_id]
	respond_to do |format|
	  if rating.save!
	  	format.js { redirect_to product_page_product_path(@product), notice: 'Rating was successfully created.' }
	      format.html { redirect_to product_page_product_path(@product), notice: 'Rating was successfully created.' }
	  else
	  end
    end
    rating.update(user_id: @user)
end
    
 private
     
	def rating_params
      params.require(:rating).permit(:rating, :review, :product_id, :user_id)
    end
end