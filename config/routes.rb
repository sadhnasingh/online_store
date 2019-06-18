Rails.application.routes.draw do
  get 'admin/index'
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
end
