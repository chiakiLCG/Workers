class User < ApplicationRecord
  validates :user_no, presence: true
  has_secure_password
end
