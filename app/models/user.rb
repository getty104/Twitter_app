class User < ApplicationRecord
	validates :name,  presence: true
	validates :image,  presence: true
	validates :account, presence: true, uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
	validates :group, presence: true

end
