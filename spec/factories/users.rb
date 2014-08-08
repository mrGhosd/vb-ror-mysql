FactoryGirl.define do
  factory :user do
    surname     "S"
    name        "N"
    secondname  "SN"

    #advance associations
    after(:build) do |loan|
      user.loan << FactoryGirl.build(:loan, loan_sum: 10000,
      begin_date: Time.zone.today, end_date: Time.zone.today + 6.months)
    end
  end
end