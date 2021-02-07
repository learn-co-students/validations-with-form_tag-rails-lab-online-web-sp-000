class Author < ActiveRecord::Base
validates :name, presence: { message: "must be given please" }
validates_uniqueness_of :email 
  validates :phone_number, length: {is: 10}
end


{ message: 'must be abided' }