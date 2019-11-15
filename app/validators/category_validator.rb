class CategoryValidator < ActiveModel::Validator
  def validate(record)
    unless record.category.match?(/^Fiction/) || record.category.match?(/^Non-Fiction/)
      record.errors[:category] << "Category must be either Fiction or Non-Fiction"
    end
  end
end