Rails.application.routes.draw do
resources :posts, only: [:index, :show, :new, :create, :edit, :update]
 #On a side note, as a shortcut you could also simply add the edit and update actions to the resources call in the routes file and that would accomplish the same goal that these two lines do.
 
end