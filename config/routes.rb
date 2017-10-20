Rails.application.routes.draw do
  root 'pictures#index'

  get 'pictures' => 'pictures#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pictures/new' => 'pictures#new'

  # get 'users/new' => 'users#new'
  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]
  
  get 'pictures/:id/edit' => 'pictures#edit'
  patch 'pictures/:id' => 'pictures#update'

  get 'pictures/:id' => 'pictures#show'

  post 'pictures' => 'pictures#create'

  delete 'pictures/:id' => 'pictures#destroy'

end

#match any get request for the localhost3000/pictures to the index method found
#in the pictures controller
