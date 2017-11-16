Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  root to: 'services#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :services, only: [:index, :new, :create, :show, :edit, :update] do
    collection do
      get 'search', to: 'services#search'
    end
    resources :bookings, only: [:new, :create]
  end

  get 'dashboard', to: 'pages#dashboard'
  resources :bookings, only: [:destroy]

end
