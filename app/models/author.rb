class Author < ActiveRecord::Base
   validates :name, :email, :phone_number, presence: true
   validates :email, uniqueness: true
   validates :phone_number, length: { is: 10 }, 
   format: { with: /[0-9]/, message: "Only numbers"}

end
