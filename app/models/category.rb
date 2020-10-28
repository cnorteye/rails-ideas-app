class Category < ApplicationRecord
  has_many :ideas
  validates :name, length: { minimum: 4}
  validates :name, presence:true
end
