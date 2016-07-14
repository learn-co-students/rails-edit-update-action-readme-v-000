Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  #get '/posts/:id/edit', to: 'posts#edit'
  #put '/posts/:id/edit', to: 'posts#update'

end