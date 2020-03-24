class Item < ApplicationRecord

	belongs_to :user

	has_many :categories, dependent: :destroy
	has_many :comments, dependent: :destroy

	acts_as_taggable

end
