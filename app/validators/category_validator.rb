class CategoryValidator < ActiveModel::Validator
    def validate(record)
      if record.category == "Fiction" || record.category == "Non-Fiction"
      else
        record.errors[:category] << "Invalid category"
      end
    end
  end