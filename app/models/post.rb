class Post < ActiveRecord::Base
    #title is not blank
    validates :title, presence: true
    #content is >100
    validates :content, length: {minimum:100}
    #either fiction or nonfiction
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
