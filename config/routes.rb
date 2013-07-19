Happilabs3::Application.routes.draw do

  resources :products


  resources :reviews


  devise_for :users
  resources :reports
  resources :categories

  resources :subscribers

  root to: "Pages#index"

  get "/index" => "Pages#index"
  get "/about_us" => "Pages#about_us", as: "about_us"
  get "sign_up" => "Pages#sign_up", as: "sign_up"

  get "/voices" => "Pages#voices", as: "voices"
  match '/voices' => 'Pages#create_voice', :as => 'voices', :via => :post
  get "/user_voices" => "Pages#user_voices", :as => "user_voices"
  post "/user_voices" => "Pages#create_user_voice", :as => 'user_voices'


  get "/contact" => "Pages#contact", as: "contact"
  get "/200ml" => "Pages#two_hundred_ml", as: "two_hundred_ml"
  get "/1000ml" => "Pages#one_thousand_ml", as: "one_thousand_ml"
end
