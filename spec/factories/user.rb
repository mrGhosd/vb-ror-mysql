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
  end


end