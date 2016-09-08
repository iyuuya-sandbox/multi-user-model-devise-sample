Rails.application.routes.draw do
  root to: 'top#index'

  devise_for :users, class_name: "Event::User"

  namespace :admin do
    devise_for :users, class_name: "Event::Admin::User"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
