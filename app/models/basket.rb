# frozen_string_literal: true

class Basket < ApplicationRecord
  serialize :products

  before_create :generate_reference
  before_create :init_products

  validates :reference, uniqueness: true
  validates :user_uuid, uniqueness: true

  def generate_reference
    self.reference = loop do
      random_ref = SecureRandom.hex(8)
      break random_ref unless Product.exists?(reference: random_ref)
    end
  end

  def init_products
    self.products = Hash.new
  end
end
