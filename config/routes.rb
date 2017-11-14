Rails.application.routes.draw do
  resources :businesses do
    resources :locations
  end
end
