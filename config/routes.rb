Rails.application.routes.draw do
  resources :posts, only: %i[index show new create]
  #bottom two lines of code will accomplish same as if adding edit and update to the symbol array above.
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  patch 'posts/:id', to: 'posts#update'
end
