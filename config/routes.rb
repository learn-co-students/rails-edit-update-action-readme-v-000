Rails.application.routes.draw do
  resources :posts , except: :destroy#, only: [:index, :show, :new, :create]
end
