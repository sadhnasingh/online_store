class Rating < ApplicationRecord
	belongs_to :user
	belongs_to :product
	has_many :likes, as: :likeable, dependent: :destroy
	def display_rating
		if self.new_record?
			0
		else
			(self.rating/2.0).round(1)
	end
end

	def half_star?
		if ((self.rating/2.0).to_s.split('.')[1].to_i) > 0
			true
		else
			false		
		end
	end
	def already_liked?(user)
		likes.where(user_id: user.id).exists?
	end
end
