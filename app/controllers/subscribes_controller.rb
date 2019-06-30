class SubscribesController < ApplicationController
	def index
	end
	def new
	end
	def create
		pat = Subscribe.new(subscribe_params)
		# @product = params[:cart][:product_id]
		# byebug
      if pat.save
      	UserMailer.user_subscription(pat.email).deliver_now
      	redirect_to root_path
      else
      end
    end
    

		
 private
     
 
	def subscribe_params
      params.require(:subscribe).permit(:email)
    end
end