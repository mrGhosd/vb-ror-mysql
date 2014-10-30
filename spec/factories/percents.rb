FactoryGirl.define do
  factory :percent do
    value           0.89
    begin_date      Time.zone.now
    end_date        Time.zone.now + 10.months
    max_summ        100000
    min_summ        10000
    max_time        3
    min_time        15
  end
  trait :loan do
    loan_or_deposit true
  end

  trait :deposit do
    loan_or_deposit false
  end
end