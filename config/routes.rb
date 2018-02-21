Rails.application.routes.draw do
  #can add :edit, :update to the resources call
  resources :posts, only: [:index, :show, :new, :create]
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  put 'posts/:id', to: 'posts#update'
end
