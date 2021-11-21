Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # namespace :api do # since our front end application might be hosted on a specific domain, we will want all of our backend routes to be name spaced to indicate they are routes associated with an api.
  #   namespace :v1 do
      resources :recipes, only: [:index, :create]
      resources :categories, only: [:index]
  #   end
  # end
end
