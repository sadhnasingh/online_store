class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	has_many :sub_categories
	has_many :product_variants
	has_many :ratings
end