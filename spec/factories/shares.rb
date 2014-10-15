FactoryGirl.define do
  factory :share do
    share_title "title"
    share_text "text"
    enabled     true

    trait :disabled do
      enabled false
    end
  end
end