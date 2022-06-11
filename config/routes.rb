Rails.application.routes.draw do
  devise_for :users, :path_prefix => 'd'
    resources :users, :only =>[:show, :index]
  root to: 'pages#home'
  # resources :friendships, only: [:index]
  # resources :contents, only: [:index] do
  #   # contents to be nested in friendships?
  #   # this way once we thumbs up we can link to the 'create' method of matches
  #   # also need to nest matches create in friendships
  #   # once we create a match we need the friendship_id which is why it needs to be nested
  #   # now we go to the matches controller where we can check if our friend liked the same content
  #   # if they have we create the match
  #   resources :user_contents, only: [ :create ]
  # end

  # resources :matches, only: [:show]


 # routes 2.0
 resources :friendships, only: [:index,:create] do
  resources :contents, only: [:index] do
    resources :user_contents, only: [:create]
  end
end
resources :matches, only: [:show]
end
