Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create]
  
  # Adding :edit && :update to the above resources array does the same as below.
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  put 'posts/:id', to: 'posts#update'
end