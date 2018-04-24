Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create]

  #The following will create edit and post routes. You could also simply add the edit and update actions to the resouces call above ^^^

  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post

  put 'posts/:id', to: 'posts#update'

end
