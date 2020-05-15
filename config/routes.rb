Rails.application.routes.draw do
  resource :users, only: [:new , :create]
end
