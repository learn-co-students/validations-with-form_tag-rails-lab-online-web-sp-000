class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 100, message: "Too short of content" }
    validates_with CategoryValidator
end
