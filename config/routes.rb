Rails.application.routes.draw do
 devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  
  resources :rezultates

  resources :notificaris do
    member do
      get :trimite
      get :trimiteneplata
      get :tz
    end
  end


  resources :programaris

  resources :pacients do

  	collection { post :import }
    resources :programaris
    resources :rezultates
 member do
      get :trimite
end
    		end



  root to: 'pacients#index'
end
