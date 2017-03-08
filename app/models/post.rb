class Post < ApplicationRecord
	validates :title, presence: true
	validates :body, presence: true
	
	belongs_to :category
	belongs_to :user
	has_many :post_comments, :dependent => :destroy
end
