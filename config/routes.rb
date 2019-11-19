Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show, :new, :create, :edit, :update]

  # get "/articles/:id/edit", to: "articles#edit" # No path name generated
  # resources :articles, only: :edit # This and the line of code below do the same thing.
  # get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  
  # patch 'articles/:id', to: 'articles#update'
  # Here and elsewhere, '/articles/:id' and 'articles/:id' BOTH work,
  # but the convention appears to be '/articles/:id'.
  # For singular resources (/about, e.g.), the convention seems to be without the /
  # So, the route looks like: get 'about', to: 'static#about'
end
