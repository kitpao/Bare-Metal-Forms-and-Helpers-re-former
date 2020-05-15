Rails.application.routes.draw do
  resource :users, only: [:new , :create, :edit, :update]
end
