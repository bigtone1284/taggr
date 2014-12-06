Rails.application.routes.draw do
  resources :users, :locations, :images, :tags
  root "locations#index"
end