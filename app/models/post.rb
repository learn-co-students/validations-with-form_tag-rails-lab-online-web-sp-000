class Post < ActiveRecord::Base
    validates :title, presence: { message: "cannot be blank." }
    validates :content, length: { minimum: 100, message: "must be at least %{count} characters." }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "must be 'Fiction' or 'Non-Fiction'." }
end
