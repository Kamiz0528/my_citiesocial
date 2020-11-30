FactoryBot.define do
  factory :order do
    num { "MyString" }
    recipient { "MyString" }
    tel { "MyString" }
    address { "MyString" }
    note { "MyText" }
    note { "MyText" }
    user { nil }
    state { "MyString" }
    paid_at { "2020-11-30 17:05:02" }
    transaction_id { "MyString" }
  end
end
