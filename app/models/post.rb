class Post < ActiveRecord::Base
    validates :title,  presence: true
    validates :content, length: {minimum: 100}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validates :clickbait


    def clickbait
        if !self.title.nil? && (self.title.include?("You Won't" || "Secret" || "Top" || "Guess"))
            errors.add(:base, "Title is not a clickbait!")
        end

    end    
end
