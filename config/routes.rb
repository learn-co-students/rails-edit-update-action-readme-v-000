Rails.application.routes.draw do
  resources :articles, only: %i[index show new create edit update]
  get 'articles/:id/edit', to: 'articles#edit'
end
