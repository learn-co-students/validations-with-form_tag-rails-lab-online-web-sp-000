class CategoryValidator < ActiveModel::Validator
  def validate(record)
    if record.category == "Fiction" || record.category == "Non-Fiction"
      #everything is fine
    else
      record.errors[:category] << "Category must be Fiction or Non-Fiction"
    end
  end
end
