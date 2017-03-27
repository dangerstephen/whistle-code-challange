class Dog < ActiveRecord::Base
  validates :name, presence: true

  has_many :meals
  has_many :walks
end
