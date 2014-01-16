Angeltation::Application.routes.draw do

  resources :legends do 
  	resources :books 
  end 

	root "static_pages#Home"
	match "/about", to: "static_pages#About", via: 'get' 
	match "/how", to: "static_pages#How", via: 'get' 
	match "/contact", to: "static_pages#Contact", via: 'get' 
	match "/privacy", to: "static_pages#Privacy", via: 'get' 
	match "/terms", to: "static_pages#Terms", via: 'get' 
 
end
