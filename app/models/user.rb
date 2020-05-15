class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true, messsage: 'Think more, be original, use brain'
end
