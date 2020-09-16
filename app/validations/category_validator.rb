class CategoryValidator < ActiveModel::Validator
    def validate(record)
        unless record.category == "Fiction" || record.category == "Non-Fiction"
            record.errors[:category] << "You're only allowed to add Fiction or Non-Fiction books."
        end
    end
end