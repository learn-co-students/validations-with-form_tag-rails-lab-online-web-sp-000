class Post < ActiveRecord::Base
  # include ActiveModel::Validations

  # validates_with CategoryValidator
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  validates :title, presence: true
  validates :content, length: {minimum: 100}
end
