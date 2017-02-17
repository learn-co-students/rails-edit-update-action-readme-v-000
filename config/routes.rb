Rails.application.routes.draw do
	get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
	put 'posts/:id', to: 'posts#update'
  resources :posts, only: [:index, :show, :new, :create]
end