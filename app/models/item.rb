class Item < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many_attached :photos
end
