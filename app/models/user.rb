class User < ApplicationRecord
	validates :name,  presence: true
  	validates :account, presence: true
end
