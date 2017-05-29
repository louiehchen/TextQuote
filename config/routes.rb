Rails.application.routes.draw do
	root 'texts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :texts, :only => [:index]
  post 'texts/send_text' => 'texts#send_text'

	resources :phones, only: [:new, :create]
	post 'phones/verify' => "phones#verify"
	resources :phones, only: [:new, :create]
	post 'phone_numbers/verify' => "phone_numbers#verify"

end
