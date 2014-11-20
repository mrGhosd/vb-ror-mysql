FactoryGirl.define do
  factory :loan do
    sum         25000
    begin_date Time.zone.now
    end_date   Time.zone.now + 6.months

    trait :confirmed do
      response true
    end

    trait :unconfirmed do
      response false
    end

    trait :payed do
      status true
    end

    trait :unpayed do
      status false
    end
  end
end