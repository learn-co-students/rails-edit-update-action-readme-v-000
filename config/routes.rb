Rails.application.routes.draw do
  resources :posts, only: [:edit, :update, :index, :show, :new, :create]
end
