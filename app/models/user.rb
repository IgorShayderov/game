class User < ApplicationRecord
  include Auth

  validates :login, :password_digest, :email, presence: true
end
