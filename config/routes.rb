Oops::Application.routes.draw do

  post "votes/create"
  delete "votes/destroy"

  resources :tips
  
  match 'upvote/:id' => 'votes#create'
  match 'downvote/:id' => 'votes#destroy'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'tips#index'

end
