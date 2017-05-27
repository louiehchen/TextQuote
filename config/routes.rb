Rails.application.routes.draw do
	'root' => 'texts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :texts, :only => [:index]
  post 'texts/send_text' => 'texts#send_text'


end
