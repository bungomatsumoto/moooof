Rails.application.routes.draw do
  root 'properties#index'
  resources :properties do
    resources :stations, only: [:new, :create, :edit, :show]
  end
end
