class Author < ActiveRecord::Base
    validates :email, uniqueness: true
    validates :name, presence: :true
    validates :name, format: { without: /[0-9]/}
    validates :phone_number, length: { is: 10}
end
