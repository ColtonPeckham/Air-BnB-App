class Room < ApplicationRecord
  has_many :room_images
  belongs_to :user 
  has_many :reviews 
end


