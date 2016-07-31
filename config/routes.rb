Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create]
  get '/posts/:id/edit', to: 'posts#edit'
  put 'posts/:id', to: 'posts#update'
end
