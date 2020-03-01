class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 100} #content is at least 100 characters long
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)} #category is either "Fiction" or "Non-Fiction"
end
