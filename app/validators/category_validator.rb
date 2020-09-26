class CategoryValidator < ActiveModel::Validator
    
    def validate(record)
            if record.category == "Fiction" || record.category == "Non-Fiction"
               true
            else
                record.errors[:category] << "Must be either Fiction or Non-Fiction"
            end
        end
  end
