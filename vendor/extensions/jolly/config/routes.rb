Rails.application.routes.draw do
  
  namespace :admin do
    resources :wysiwygs
  end
  
  match 'about_us/', :to => "pages#about_us"
  match 'services/', :to => "pages#services"
  match 'raw_resources/', :to => "pages#raw_resources"
  match 'contact_us/', :to => "pages#contact_us"
  
  match 'privacy_policy/', :to => "pages#privacy_policy"
  match 'return_policy/', :to => "pages#return_policy"
  match 'refund_policy/', :to => "pages#refund_policy"
  match 'cancellation_policy/', :to => "pages#cancellation_policy"
  match 'delivery_shipping_policy/', :to => "pages#delivery_shipping_policy"
  
  
  root :to => 'pages#index'
  
end
