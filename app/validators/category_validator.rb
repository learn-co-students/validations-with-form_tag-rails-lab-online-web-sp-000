class CategoryValidator < ActiveModel::Validator
   def validate(record)
      if !(record.category == "Fiction" || record.category == "Non-Fiction")
         record.errors[:category] << "Needs to be 'Fiction' Or 'Non-Fiction'"
      end
   end 
end