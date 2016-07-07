Rails.application.routes.draw do
  get 'client_card/index'

  devise_for :users
  root 'static#index'
  get 'bills' => 'static#bills'
  get 'clients' => 'static#clients'
  get 'contacts' => 'static#contacts'
  get 'purchase' => 'static#purchase'
  get 'history' => 'static#history'
  get '/clients(/page/:page)' => 'static#clients', :as => :static, :page => 1

  get 'client/:id' => 'client_card#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
