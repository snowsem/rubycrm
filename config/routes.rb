Rails.application.routes.draw do
  devise_for :users
  root 'static#index'
  get 'secret' => 'static#secret'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
