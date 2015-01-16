Rails.application.routes.draw do

  get "/user_supports/new" => "user_supports#new", as: :new_user_support
  post "user_supports" => "user_supports#create", as: :user_supports
  get "/user_supports/:id" => "user_supports#show", as: :user_support
  get "/user_supports/:id/edit" => "user_supports#edit", as: :edit_user_support
  patch "/user_supports/:id" => "user_supports#update"
  delete "/user_supports/:id" => "user_supports#destroy"

  root "user_supports#index"

end
