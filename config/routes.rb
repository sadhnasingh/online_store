Rails.application.routes.draw do
  resources :products do
  resources :product_variants
  	collection do
  		get :subcategory 
  	end
    member do
      get :product_page
    end
  end
  resources :carts
  resources :sub_categories
  resources :categories
    get 'admin/index'
  
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  
end
