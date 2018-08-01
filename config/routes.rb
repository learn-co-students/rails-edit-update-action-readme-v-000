Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create]
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  # we're sending data to the server, so we know it's not GET, and since we're not creating a new record it shouldn't be POST. That's right- PUT should be the HTTP verb!
  put 'posts/:id', to: 'posts#update'
end
