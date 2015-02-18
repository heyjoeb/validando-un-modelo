class Player < ActiveRecord::Base
	
	validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :name, presence: true
	validates :username, presence: true, uniqueness: true,  length: { minimum: 5, maximum: 20 }
	validates :points, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end


