class Author < ActiveRecord::Base
    # name != blank
    validates :name, presence: true
    # unique :email
    validates :email, uniqueness: true
    # phone_number *10 digits long*
    validates :phone_number, length: { is: 10 }
end
