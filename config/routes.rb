Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do 
    resources :users, only: [:index, :show, :create]
    resource :session, only: [:create, :destroy]
    resources :cats, only: [:create, :destroy, :index, :show, :update]
    resources :cat_rental_request, only: [:create, :destroy, :index, :show, :update]
  end
end
