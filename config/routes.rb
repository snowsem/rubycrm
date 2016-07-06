Rails.application.routes.draw do
  devise_for :users
  root 'static#index'
  get 'bills' => 'static#bills'
  get 'clients' => 'static#clients'
  get 'contacts' => 'static#contacts'
  get 'purchase' => 'static#purchase'
  get 'history' => 'static#history'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
