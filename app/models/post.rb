class Post < ApplicationRecord
	attr_accessible :name, :body, :category_id, :author_id
	belongs_to :category
end
