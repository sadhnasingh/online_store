class CartsController < ApplicationController
	def index
	end
	def new
	end
	def create
		pat = Cart.new(cart_params)
		@product = params[:cart][:product_id]
		respond_to do |format|
      if pat.save
        format.html { redirect_to product_page_product_path(@product), notice: 'Category was successfully created.' }
      else
      end
    end
 		end
    

		
 private
     
 
	def cart_params
      params.require(:cart).permit(:quantity, :product_id)
    end
end