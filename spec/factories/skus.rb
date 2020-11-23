FactoryBot.define do
  factory :sku do
    product { nil }
    spec { "MyString" }
    quantity { 1 }
    deleted_at { "2020-11-23 13:47:26" }
  end
end
