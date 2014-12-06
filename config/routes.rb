Rails.application.routes.draw do
  resources :users, :locations, :images, :tags
end