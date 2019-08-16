Rails.application.routes.draw do
  devise_for :users, controllers: {
      registrations: 'registrations' #extends to registrations controller
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'instruments#index'
  resources :instruments

end
