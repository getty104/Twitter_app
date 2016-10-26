class User < ApplicationRecord
	validates :name,  presence: true
  	validates :account, presence: true, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }
end
