FactoryGirl.define do
  factory :role do
    value           "Курсант"
    active          true
    default_chosen  false
  end

  factory :roles_percent do
    percent_id      1
    role_id         1
  end
end