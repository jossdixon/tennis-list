Rails.application.routes.draw do
  root to: 'brands#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :brands, only: [ :index, :show, :new, :create ] do
    resources :sponsorships, only: [ :new, :create ]
  end

  resources :sponsorships, only: [ :destroy ]
end
