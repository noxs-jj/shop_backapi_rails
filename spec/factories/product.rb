# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    id { Faker::Number.number(8) }
    name { Faker::Name.name }
    reference { SecureRandom.hex(16) }
    price { Faker::Number.decimal(2) }
    images_preview_url { 'http://files.noxs.net/shop_railsapi/products/001/car_01.jpg' }
    images_caroussel do
      [
        'http://files.noxs.net/shop_railsapi/products/001/car_01.jpg',
        'http://files.noxs.net/shop_railsapi/products/001/car_02.jpg',
        'http://files.noxs.net/shop_railsapi/products/001/car_03.jpg'
      ]
    end
    description { Faker::Lorem.sentence }
    long_description { Faker::Lorem.paragraphs }
  end
end
