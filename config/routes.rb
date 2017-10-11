Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  # To add the edit and update routes manually:
  # get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  # put 'posts/:id', to: 'posts#update'

end