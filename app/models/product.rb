# frozen_string_literal: true

class Product < ApplicationRecord
  serialize :images_caroussel

  before_create :generate_reference

  validates :reference, uniqueness: true

  def generate_reference
    self.reference = loop do
      random_ref = SecureRandom.hex(8)
      break random_ref unless Product.exists?(reference: random_ref)
    end
  end
end
