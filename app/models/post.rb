class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates :title, presence: true
    validates_with CategoryValidator
    validates :content, length: { minimum: 100 }
end
