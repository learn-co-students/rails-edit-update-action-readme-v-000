Rails.application.routes.draw do
  resources :posts, only: [:index, :show, :new, :create, :update, :edit]
  #or inserted as
  #     get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  #     put 'posts/:id', to: 'posts#update'  
end
