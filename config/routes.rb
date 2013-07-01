Happilabs3::Application.routes.draw do

  devise_for :users

  resources :reviews


  resources :reports


  resources :products


  resources :categories


  resources :subscribers


  root to: "Pages#index"

  get "/index" => "Pages#index"
  get "/about_us" => "Pages#about_us", as: "about_us"
  get "sign_up" => "Pages#sign_up", as: "sign_up"
  get "/voices" => "Pages#voices", as: "voices"
  match '/voices' => 'Pages#create_voice', :as => 'voices', :via => :post


end
