class MyValidator < ActiveModel::Validator
    def validate(record)
      unless record.category == 'Fiction' || record.category == 'Non-Fiction'
        record.errors[:category] << 'Need to choose between Fiction or Non-Fiction please!'
      end
    end
  end
