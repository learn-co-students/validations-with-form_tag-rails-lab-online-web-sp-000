class Post < ActiveRecord::Base
    validates :title, presence: true 
    validates :content, length: { minimum: 100 }
    validates :category, format: { with: /\ANon-Fiction\z|\AFiction\z/ }
end
