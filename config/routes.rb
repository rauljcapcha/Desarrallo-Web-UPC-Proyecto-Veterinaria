Rails.application.routes.draw do

  resources :user_types
  get 'users/page/:page_id', to: 'users#index', as: 'users_pagination'
  get 'customers/page/:page_id', to: 'customers#index', as: 'customers_pagination'

  get    'ourservices' => 'static_pages#ourservices'
  get    'about'    => 'static_pages#about'
  get    'contact'  => 'static_pages#contact'
  get    'signup'   => 'users#new'
  get    'login'    => 'sessions#new'
  post   'login'    => 'sessions#create'
  delete 'logout'   => 'sessions#destroy'

  resources :detail_vouchers
  resources :vouchers
  resources :sellers
  resources :users
  resources :voucher_types
  resources :consumptions
  resources :detail_guides
  resources :guides
  resources :atentions
  resources :services
  resources :service_types
  resources :products
  resources :product_types
  resources :providers
  resources :branches
  resources :employees
  resources :veterinary_appointments
  resources :pets
  resources :customers
  resources :document_types
  resources :breeds
  resources :species
  
  root                'static_pages#home'

end
