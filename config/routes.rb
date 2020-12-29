Rails.application.routes.draw do
  root "people#index"

  get "people/index" => "people#index"
  get "groups/index" => "groups#index"
  resources :people
  resources :groups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
