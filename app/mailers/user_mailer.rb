class UserMailer < ApplicationMailer
  def user_subscription(pat)
		@pat = pat
		mail(to: pat.email,
			from: "testing.bittern@gmail.com",
			subjects: "Order created") 
		
	end
   
end