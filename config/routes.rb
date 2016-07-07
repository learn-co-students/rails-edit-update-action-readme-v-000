Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  # get '/posts/:id/edit', to: 'posts#edit' #or simply add ':edit' to resources
  # put 'posts/:id', to: 'posts#update'  #or simply add ':update' to resources

end
