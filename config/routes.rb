Rails.application.routes.draw do
  resources :positions
  resources :reviewers
  resources :magazines
  resources :grapes
  devise_for :users
  resources :wines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'wines#index'
end
