class Group < ApplicationRecord
  has_many :users
  validates :name, uniqueness: true, presence: true, allow_blank: false
end
