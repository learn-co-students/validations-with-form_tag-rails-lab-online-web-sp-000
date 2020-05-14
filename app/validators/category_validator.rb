class CategoryValidator < ActiveModel::Validator

  def validate(record)
    unless record.category == "Non-Fiction" || record.category == "Fiction"
      record.errors[:category] = "Category can only be fiction or non-fiction!"
    end
  end

end
