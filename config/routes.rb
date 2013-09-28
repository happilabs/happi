Happilabs3::Application.routes.draw do

  resources :products
  resources :reviews
  resources :charges

  devise_for :users, :controllers => { :registrations => :registrations }
  devise_for :users
  resources :reports
  resources :categories
  resources :subscribers

  root to: "Pages#index"

  get "/contact" => "Pages#contact", as: "contact"
  get "/200ml" => "Pages#two_hundred_ml", as: "two_hundred_ml"
  get "/1000ml" => "Pages#one_thousand_ml", as: "one_thousand_ml"
  get "/our_people" => "Pages#our_people", as: "our_people"

  get "/jobs" => "Pages#jobs", as: "privacy_policy"
  get "/privacy_policy" => "Pages#privacy_policy", as: "privacy_policy"
  get "/user_agreement" => "Pages#user_agreement", as: "user_agreement"
  get "/lab_sustainability" => "Pages#lab_sustainability", as: "lab_sustainability"

  get "/index" => "Pages#index"
  get "/about_us" => "Pages#about_us", as: "about_us"
  get "/sign_up" => "Pages#sign_up", as: "sign_up"

  get "/voices" => "Pages#voices", as: "voices"
  match '/voices' => 'Pages#create_voice', :as => 'voices', :via => :post
  get "/user_voices" => "Pages#user_voices", :as => "user_voices"
  post "/user_voices" => "Pages#create_user_voice", :as => 'user_voices'
  get "/user_index" => "Pages#user_index", :as => "user_index"
  delete "/user_index/:user_id" => "Pages#delete_user", :as => "delete_user"

  get "/categories/:id/sorted_alphabetically" => "Categories#sorted_alphabetically", :as => "categories_sorted_alphabetically"

end
