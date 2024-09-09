# frozen_string_literal: true

class User < ApplicationRecord
  include Auth

  enum role: {
    user: 0,
    admin: 1
  }

  has_secure_password

  validates :login, :email, presence: true
  validates :email, uniqueness: true
end
