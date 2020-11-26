FactoryBot.define do
  factory :vendor do
    title { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    online { true }
  end
end

FactoryBot.create(:vendor)
FactoryBot.build(:vendor)