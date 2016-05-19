Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :destroy]


  # get 'posts/:id/edit', to: 'posts#edit'

  put 'posts/:id', to: 'posts#update'

  get 'posts/:id/destroy', to: 'posts#destroy', as: 'delete'

  get '/', to: 'posts#index'
 
end