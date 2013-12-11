class Category < ActiveRecord::Base
  has_many :courses

  validates :name, :presence => true

  validates :description, :presence => true

  validates :image, :presence => true
end
