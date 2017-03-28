class Dog < ActiveRecord::Base
  validates :name, :image_src, presence: true
  has_many :meals
  has_many :walks
end
