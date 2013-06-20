Happilabs3::Application.routes.draw do

  root to: "Pages#index"

  get "/index" => "Pages#index"
  get "/about_us" => "Pages#about_us", as: "about_us"
  get "sign_up" => "Pages#sign_up", as: "sign_up"
end
