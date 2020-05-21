class Book < ApplicationRecord
	has_many :surahs, dependent: :destroy
	has_many :ayats, dependent: :destroy
end
