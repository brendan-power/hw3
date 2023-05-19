Rails.application.routes.draw do
  resources :places, only: [:index, :show, :new, :create]
  resources :posts
end

