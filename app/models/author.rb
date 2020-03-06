class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :phone_number, format: { with: /\d{10}/, message: "Phone Number must be 10 digits."}
end
