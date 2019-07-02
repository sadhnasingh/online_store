class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :sub_categories
	has_many :product_variants
	has_many :ratings
	has_many :likes, as: :likeable, dependent: :destroy
	def already_liked?(user)
		likes.where(user_id: user.id).exists?
	end
end