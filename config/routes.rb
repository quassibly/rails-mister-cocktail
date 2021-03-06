Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create, :update] do
    resources :doses, only: [:index, :show, :new, :create]
  end
  resources :doses, only: [:destroy]
end
