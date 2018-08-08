class Product < ApplicationRecord
  serialize :images_caroussel

  validates :reference, uniqueness: true
end
