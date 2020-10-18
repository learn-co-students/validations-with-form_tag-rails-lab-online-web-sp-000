class CategoryValidator < ActiveModel::Validator
    def validate(record)
        unless record.category.match?(/^(Fiction|Non-Fiction)$/)
            record.errors[:category] << "Category must be Fiction or Non-Fiction"
        end
    end
end