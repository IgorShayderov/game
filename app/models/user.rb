# frozen_string_literal: true

class User < ApplicationRecord
  include Auth

  enum role: {
    user: 0,
    admin: 1
  }

  has_secure_password

  SPECIAL_SYMBOLS = %w[! @ # $ % ^ & * _ -].freeze
  PASSWORD_FORMAT = /\A(?=.*[#{SPECIAL_SYMBOLS.join}])(?=.*[A-Z]).+\z/
  PASSWORD_LENGTH_RANGE = 10..30

  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: PASSWORD_LENGTH_RANGE, format: { with: PASSWORD_FORMAT }, presence: true, if: :password_digest_changed?
end
