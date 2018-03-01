Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create]

  # below is the same as adding `:edit, :update` to the resources call
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  put 'posts/:id', to: 'posts#update'
end
