class Author < ActiveRecord::Base

  validates :name, presence: { message: "must be given please" }
  validates :email, uniqueness: { message: "Not a unique email" }
  validates :phone_number, length: { is: 10, message: "Must be 10 digits" }
  #validates :phone_number, numericality: true

  validates :phone_number, format: { without: /\A[a-zA-Z]+\z/, message: "only allows numbers" }

end
