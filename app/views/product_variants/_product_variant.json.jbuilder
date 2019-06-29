json.extract! product_variant, :id, :name, :product_id, :image, :created_at, :updated_at
json.url product_variant_url(product_variant, format: :json)
