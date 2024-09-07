# frozen_string_literal: true

class User < ApplicationRecord
  include Auth

  enum role: {
    user: 0,
    admin: 1
  }

  validates :login, :password_digest, :email, presence: true
  validates :email, uniqueness: true
end
