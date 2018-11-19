Rails.application.routes.draw do
  resources :articles, only: %i[index show new create edit update]

  # The below routes create an edit and update route that are dynamic and accept a unique :id
  # get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  # patch 'articles/:id', to: 'articles#update'
end
