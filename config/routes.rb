Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :show, :create,
    :edit, :update]
  #get 'post/:id/edit', to: 'posts#edit', as: :edit_post
  #put 'posts/:id'. to: 'posts#update'
end
