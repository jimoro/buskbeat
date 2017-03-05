Rails.application.routes.draw do

  resources :posts  # This succinct syntax replaces the four lines below and creates post CRUD routes for creating, updating, viewing, and deleting instances of Post.
  # get 'posts/index'
  # get 'posts/show'
  # get 'posts/new'
  # get 'posts/edit'

  get 'about' => 'welcome#about'  # Replaces "get 'welcome/about' to shorter URI of '/about' while maintaining the controller#action relationship"
  get 'faq' => 'welcome#faq'
  get 'why' => 'welcome#why'

  root to: "welcome#index"

end




# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
