Rails.application.routes.draw do
  resources :posts

  get '/post/:id/edit', to: 'posts#edit'
  put 'post/:id', to: 'posts#update'
end