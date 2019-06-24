class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :email, uniqueness: true
    validate :phone_number_is_proper_length

    def phone_number_is_proper_length
        if !(self.phone_number =~ /\d{10}/)
            errors.add(:phone_number, "phone_number must be exactly 10 digits")
        end
    end
end

