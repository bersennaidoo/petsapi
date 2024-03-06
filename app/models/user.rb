class User < ApplicationRecord
  validates :email, uniqueness: true
  validates_format_of :email, with: /@/
  validates :password_digest, presence: true
  validates :full_name, presence: true
  validates :role, presence: true

  has_secure_password
end
