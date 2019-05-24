Soblog::Application.routes.draw do resources :articles
root :to =>"articles#indes"
resources :users
resources :articles do
         resources :comments
	member { post :vote } 
      end
resource :session
get '/login' => "sessions#new", :as => "login"
get '/logout' => "sessions#destroy", :as => "logout"
end
