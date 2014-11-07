FactoryGirl.define do
  factory :contribution_account do
    operation_summ  1000
    trait :removed do
      removed_brought true
    end

    trait :brought do
      removed_brought false
    end
  end
end