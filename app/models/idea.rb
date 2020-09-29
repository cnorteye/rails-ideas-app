class Idea < ApplicationRecord
  belongs_to :category
  belongs_to :user
  validates :name, presence:true
  has_one_attached :picture
  has_many :comments
end
