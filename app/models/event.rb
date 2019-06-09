class Event < ApplicationRecord
    validates :title, {presence: true }
    validates :location, {presence: true }
    validates :content, {presence: true }
     
    mount_uploader :image, ImageUploader
    belongs_to :user
    has_many :likes
end
