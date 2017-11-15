Rails.application.routes.draw do
  root :to => 'businesses#index'

  resources :businesses do
    resources :locations, :except => [:show, :index]
  end
end
