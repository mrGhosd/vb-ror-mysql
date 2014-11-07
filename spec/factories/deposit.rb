FactoryGirl.define do
  factory :deposit do
    deposit_current_summ  1000000
    trait :confirmed do
      response true
    end

    trait :unconfirmed do
      response false
    end
  end
end