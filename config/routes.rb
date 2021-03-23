Rails.application.routes.draw do
  resources :wines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/wines/:id/edit', controller: 'wine_grapes', action: :destroy
end
