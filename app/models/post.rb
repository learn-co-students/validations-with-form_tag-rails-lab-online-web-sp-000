class Post < ActiveRecord::Base
  include ActiveModel::Validations
  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  validates_with CategoryValidator
end
