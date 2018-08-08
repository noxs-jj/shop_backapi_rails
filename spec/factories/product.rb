FactoryBot.define do
  factory :product do
    id { Faker::Number.number(8) }
    name { Faker::Name.name }
    campaign_id { Faker::Number.number(8) }
    reference { SecureRandom.hex(16) }
    price { Faker::Number.decimal(2) }
    images_preview_url { [] }
    images_caroussel { [] }
    description { Faker::Lorem.sentence }
    long_description { Faker::Lorem.paragraphs }
  end
end
