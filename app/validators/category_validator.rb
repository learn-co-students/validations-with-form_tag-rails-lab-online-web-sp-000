class CategoryValidator < ActiveModel::Validator
    def validate(record)
      unless record.category.match?(/^((Non-Fiction)|(Fiction))$/)
        record.errors[:category] << "error"
      end
    end
end