class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
  	validates :title, presence: true,
                    length: { minimum: 5 }

    def self.search(search)
	  where("title ILIKE ? OR body ILIKE ?", "%#{search}%", "%#{search}%")
	end
end
