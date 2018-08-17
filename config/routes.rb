Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create]

  get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'
  put '/posts/:id' => 'posts#update', as: 'update_post'

 #    Prefix Verb URI Pattern               Controller#Action
 #     posts GET  /posts(.:format)          posts#index
 #           POST /posts(.:format)          posts#create
 #  new_post GET  /posts/new(.:format)      posts#new
 #      post GET  /posts/:id(.:format)      posts#show
 # edit_post GET  /posts/:id/edit(.:format) posts#edit
end
