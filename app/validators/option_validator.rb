class OptionValidator < ActiveModel::Validator
    def validate(choice)
        unless choice.category == "Fiction" || choice.category == "Non-Fiction"
            choice.errors[:category] << "Must choose Fiction or Non-Fiction for category"
        end
    end
end
