Rails.application.routes.draw do
  devise_for :users

  resources :grapes
  resources :wines

  resources :reviewers do
    resources :positions
    resources :magazines
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'wines#index'
end
