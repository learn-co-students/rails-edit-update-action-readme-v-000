Rails.application.routes.draw do
  # resources :articles, only: [:index, :show, :new, :create, :edit, :update]
  get 'articles', to: 'articles#index', as: :articles
  post 'articles', to: 'articles#create'
  get 'articles/new', to: 'articles#new', as: :new_article
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  get 'articles/:id', to: 'articles#show', as: :article
  patch 'articles/:id', to: 'articles#update'
  put 'articles/:id', to: 'articles#update'
end
