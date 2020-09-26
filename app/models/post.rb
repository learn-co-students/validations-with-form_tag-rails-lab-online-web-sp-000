
require_relative '../validators/category_validator'
class Post < ActiveRecord::Base
    validates_with CategoryValidator
    validates :title,:category,:content, presence: true
    validates :content, length: { minimum: 100 }
end
