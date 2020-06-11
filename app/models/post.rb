class Post < ActiveRecord::Base
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
end
