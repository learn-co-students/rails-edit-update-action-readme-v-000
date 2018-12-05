Rails.application.routes.draw do
  resources :articles, only: [:index, :show, :new, :create, :edit, :update]
  # resources :articles, only: %i[index show new create edit update]

  # get 'articles/:id/edit', to: 'articles#edit', as: :edit_article ---> condensed and put into resources call 
  # patch 'articles/:id', to: 'articles#update' ---> condensed and put into resources call
end
