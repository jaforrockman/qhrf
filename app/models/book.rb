class Book < ApplicationRecord
	has_many :surahs, dependent: :destroy
	has_many :ayats, dependent: :destroy
	has_attached_file :image

	validates_attachment :image,
                     content_type: { content_type: /\Aimage\/.*\z/ },
                     size: { less_than: 1.megabyte }
end
