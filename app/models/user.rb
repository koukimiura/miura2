class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         #validates :name, {presence: true}
         #validates :gender, {presence: true}
         #validates :birthday, {presence: true}
         #validates :genre, {presence: true}
         
          mount_uploader :image, ImageUploader
         
         has_many :posts, :dependent => :destroy
         has_many :my_areas, :dependent => :destroy
         accepts_nested_attributes_for :my_areas
         has_many :likes, :dependent => :destroy
         has_many :events, :dependent => :destroy
         has_many :messages
         
end
