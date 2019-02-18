Rails.application.routes.draw do
  resources :articles, only: %i[index show new create edit update]
  # get 'acticles/:id/edit', to: 'articles#edit', as: :edit_article
  # patch 'acticles/:id', to: 'articles#update'
end
