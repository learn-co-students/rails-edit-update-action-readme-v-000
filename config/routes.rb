Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create]

  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post

  put 'posts/:id', to: 'posts#update'
# you could also simply add the edit and update actions to 
# the resources call in the routes file
end
