class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 100}
    validates :category, format: { with: /\A(Fiction)\z|\A(Non-Fiction)\z/}
end
