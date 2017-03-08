class Comment < ApplicationRecord
	validates :name, presence: true
	validates :email, presence: true
	validates :body, presence: true, length: { maximum: 140 }
  belongs_to :post
end
