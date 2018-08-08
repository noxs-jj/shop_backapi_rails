class Basket < ApplicationRecord
  serialize :products

  validates :reference, uniqueness: true
  validates :user_uuid, uniqueness: true
end
