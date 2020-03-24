class Item < ApplicationRecord

	belongs_to :user

	has_many :categories, dependent: :destroy
	has_many :comments, dependent: :destroy

	acts_as_taggable

	def self.search(search)
    if search
      where(['title LIKE ?', "%#{search}%"])
    else
      all
    end
  end

end
