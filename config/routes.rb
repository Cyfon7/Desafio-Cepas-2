Rails.application.routes.draw do
  devise_for :users

  resources :grapes
  resources :wines

  resources :reviewers do
    resources :magazines do 
      resources :positions
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'wines#index'
end
