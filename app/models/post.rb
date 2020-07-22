class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :category, acceptance: { accept: ['Fiction', 'Non-Fiction'] }
	validates :content, length: { minimum: 100 }
end
# title is not blank
# content is at least 100 characters long
# category is either "Fiction" or "Non-Fiction"