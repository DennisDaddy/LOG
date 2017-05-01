class Post < ApplicationRecord
	validates :title, presence: true
	validates :body, presence: true
	
	belongs_to :category
	
	has_many :comments, dependent: :destroy
	
end
