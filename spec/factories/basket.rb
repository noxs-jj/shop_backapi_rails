FactoryBot.define do
  factory :basket do
    id { Faker::Number.number(8) }
    reference { SecureRandom.hex(16) }
    user_uuid { SecureRandom.uuid }
    products { [] }
  end
end
