Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  # NOTE : Using the below individual routes is the same as adding the edit/update to the above
  # get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  # put 'posts/:id', to: 'posts#update'
end
