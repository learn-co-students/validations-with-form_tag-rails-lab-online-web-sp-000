class CategoryValidator < ActiveModel::Validator
    def validate(record)
        unless record.category == "Fiction" || record.category == "Non-Fiction"
            record.errors[:category] << "Only fiction or non-fiction allowed"
            
        end
    end
end