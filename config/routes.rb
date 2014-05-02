Makerscrest::Application.routes.draw do
   root :to =>'home#index'

    devise_for :users
    resources :users
    resources :products

  get "users/show"
  get "home/index"
 

 

  get 'signup' => 'users#create'
  



  
end
