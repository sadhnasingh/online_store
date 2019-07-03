class SubscribesController < ApplicationController
	def index
	end
	def new
	end
	def create
		pat = Subscribe.new(subscribe_params)
    respond_to do |format|
      if pat.save
      	UserMailer.user_subscription(pat.email).deliver_now
      	format.html { redirect_to root_path, notice: 'Subscription was successfully created.' }
      else
      end
    end
    end
    
 private
	def subscribe_params
      params.require(:subscribe).permit(:email)
    end
end