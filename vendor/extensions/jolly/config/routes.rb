Rails.application.routes.draw do
  
  namespace :admin do
    resources :wysiwygs
  end
  
  match 'about_us/', :to => "pages#about_us"
  match 'services/', :to => "pages#services"
  match 'raw_resources/', :to => "pages#raw_resources"
  match 'contact_us/', :to => "pages#contact_us"
  
  root :to => 'pages#index'
  
end
