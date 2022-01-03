Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :mechanics, only: %i[index show] do
    resources :rides, only: :create, controller: :mechanic_rides
  end
end
