class Post < ActiveRecord::Base
    validates :title, length: { minimum: 1 }
    validates :content, length: { minimum: 100 }
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction']}
end
