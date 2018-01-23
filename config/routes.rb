Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create] #Can add edit and update to resources above instead of creating two routes below:

  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post

  put 'posts/:id', to: 'posts#update'
end