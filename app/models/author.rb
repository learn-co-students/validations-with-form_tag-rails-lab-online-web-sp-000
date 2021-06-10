class Author < ActiveRecord::Base
  include ActiveModel::Validations
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :phone_number, length: { minimum: 10}
end
