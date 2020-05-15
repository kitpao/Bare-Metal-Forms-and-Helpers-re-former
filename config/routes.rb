Rails.application.routes.draw do
  resources :users, only: [:new , :create, :edit, :update]
end
