Rails.application.routes.draw do
  #can also just add edit and update actions to this
  resources :posts, only: [:index, :show, :new, :create]

  #dynamic
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post

  #edit - it's not a get, not a post...it's a PUT
  put 'posts/:id', to: 'posts#update'

  

end
