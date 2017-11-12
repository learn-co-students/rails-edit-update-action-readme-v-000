Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create]

  get 'posts/edit/:id', to: 'posts#edit', as: :edit_post
  put 'posts/:id', to: 'posts#update'

end