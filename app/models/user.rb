class User < ApplicationRecord
  validates :login, :password_digest, :email, presence: true
end
