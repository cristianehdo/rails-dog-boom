Rails.application.routes.draw do
  devise_for :users
  root to: 'services#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :services, only: [:index, :new, :create, :show, :edit, :update] do
    collection do
      get 'search', to: 'services#search'
    end
  end
end
