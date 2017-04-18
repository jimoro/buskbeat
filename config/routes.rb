Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks",
    :registrations => 'users/registrations'
  }

  resources :users, only: [] do
    resource :profile, only: [:create, :new, :update, :edit, :show]
    resources :videos, only: [:create, :new, :update, :edit, :show, :index]
  end

  resources :topics do
    resources :posts, except: [:index]  # This 'resources :<controller> syntax generates RESTful CRUD routes to create, update, view, and delete Post instances.
  end


  get 'about' => 'welcome#about'  # Replaces "get 'welcome/about' to shorter URI of '/about' while maintaining the controller#action relationship"
  get 'faq' => 'welcome#faq'
  get 'why' => 'welcome#why'

  root to: "welcome#index"

end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
