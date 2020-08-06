class Author < ActiveRecord::Base
    #name not blank
    validates :name, presence: true
    #email is unique
    validates :email, uniqueness: true
    #phone # is 10 long
    validates :phone_number, length: {is:10}
end
