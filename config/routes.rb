Rails.application.routes.draw do
  resources :products do
  	collection do
  		get :subcategory 
  	end
  end
  resources :sub_categories
  resources :categories
    get 'admin/index'
  
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  # get 'products/subcategory'
end
