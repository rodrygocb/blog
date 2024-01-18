class Post < ApplicationRecord
    validates :title, :description, presence:true
    validates :title, length: {in: 5..10}
    validates :description, length: {in:10..50}

    before_save do
        self.title = self.title + " - Post"
    end
end
