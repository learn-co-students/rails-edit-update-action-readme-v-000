Rails.application.routes.draw do
    root to: 'articles#index'
    resources :articles, only: %i[index show new create edit update]
end
