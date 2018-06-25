Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :update]
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  patch 'posts/:id', to: 'posts#update'
end
