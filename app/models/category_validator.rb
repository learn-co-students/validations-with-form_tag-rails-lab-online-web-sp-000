class CategoryValidator < ActiveModel::Validator
  def validate(category)
    unless category.include?("Fiction" || "Non-Fiction")
      category.errors[:category] << "Fiction or Non-Fiction Only!"
    end
  end

  # validates :title, presence: true
  # validates :content, :length => {:minimum => 100}

end
