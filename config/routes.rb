Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'applicants', to: "properties#all"
  resources :properties do
  	resources :applicants
  end
  resources :landlords
  root 'properties#index'
end
