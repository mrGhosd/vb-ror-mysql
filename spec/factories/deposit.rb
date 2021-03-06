FactoryGirl.define do
  factory :deposit do
    current_amount  1000000
    trait :confirmed do
      response true
    end

    trait :unconfirmed do
      response false
    end
  end
end