class UserMailer < ApplicationMailer
  def user_subscription(pat)
	@pat = pat
	mail(to: pat,
		from: "testing.bittern@gmail.com",
		subjects: "User Subscription") 
	end
end