Rails.application.routes.draw do
 
  
  # get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  # patch 'posts/:id', to: 'posts#update'

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
end
