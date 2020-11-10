class Post < ActiveRecord::Base
    # title != blank
    validates :title, presence: true
    # content at least 100 characters
    validates :content, length: { minimum: 100 }
    # category Fiction || Non-Fiction
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
