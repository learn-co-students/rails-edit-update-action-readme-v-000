Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  # get 'posts/:id/edit', to: 'posts#edit'
  # get 'posts/:id/update' to: 'posts#update'
end
