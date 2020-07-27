class Post < ActiveRecord::Base
  validates :content, presence: true, length: { minimum: 100 }
  validates :title, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
end
