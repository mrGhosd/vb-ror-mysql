FactoryGirl.define do
  factory :user do
    surname     "S"
    name        "N"
    secondname  "SN"
    role_id     1
    login       "3"
    password    "3"
    contact_phone 12345

    trait :admin do
      access_role "admin"
    end

    #advance associations
    after(:build) do |loan|
      user.loan << FactoryGirl.build(:loan, loan_sum: 10000,
      begin_date: Time.zone.today, end_date: Time.zone.today + 6.months)
    end
  end


end