class CategoryValidator < ActiveModel::Validator
    def validate(record)
        unless record.category == "Fiction" || record.category == "Non-Fiction"
          record.errors[:category] << "The category is invalid."
        end
    end
end