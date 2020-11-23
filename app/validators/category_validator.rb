class CategoryValidator < ActiveModel::Validator 
    def validate(record)
        unless record.category == "Fiction" || record.category == "Non-Fiction"
            record.errors[:category] = "There are only fiction or non-fiction category"
        end
    end
end