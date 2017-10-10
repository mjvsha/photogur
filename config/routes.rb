Rails.application.routes.draw do

  get 'pictures' => 'pictures#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pictures/new' => 'pictures#new'

  get 'pictures/:id' => 'pictures#show'

  post 'pictures' => 'pictures#create'
  
end

#match any get request for the localhost3000/pictures to the index method found
#in the pictures controller
