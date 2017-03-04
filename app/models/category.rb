class Category < ApplicationRecord
	validates :name
	
	has_many :posts
end
