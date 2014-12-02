FactoryGirl.define do
  factory :user do
    surname     "S"
    name        "N"
    secondname  "SN"
    role_id     1
    login       "3"
    password    "3"
    contact_phone 12345
    confirmed   true

    trait :admin do
      access_role "admin"
    end
  end

  factory :passport do
    pasport_seria         1234
    pasport_number        123456
    pasport_when          Time.zone.now - 23.years
    pasport_where         "Vologda"
    pasport_code          12345
    definite_registration "BLA_BLA_BLA"
    old_pasport_seria     0000
    old_pasport_number    000000
  end

  factory :voen_pasport do
    voen_seria          9999
    voen_number         9999991
    voen_where          "OLOLOLOLO"
    voen_when           Time.zone.now - 3.year
    nationality_id      1
    education_id        1
    relashionship_id    1
    specialization_id   1
    sport_mastery_id    1
  end

  factory :nationality do
    id    1
    value "A"
  end

  factory :education do
    id    1
    value "B"
  end

  factory :relashionship do
    id    1
    value "C"
  end

  factory :specialization do
    id    1
    value "D"
  end

  factory :sport_mastery do
    id    1
    value "E"
  end

  factory :contact_information do
    email                     "ololosh@mail.ru"
    actual_adress             "Puskina-kolotushkina"
    phone_adress              "awdawdfawwafaw"
    contact_person_surname    "S1"
    contact_person_name       "N1"
    contact_person_secondname "SN1"
    contact_person_phone      89214438239
  end

  factory :role_kursant do
    univercity_name     "LETI"
    faculty             "Olol"
    course              4
    graduate_date       Time.zone.now - 2.year
    course_post         "OLOLOSH"
    excelent_student    true
    debt                false
    contract            true
    duty_phone          8921
    education_phone     123456
  end

  factory :role_contract do
    rank_id         1
    post_id         1
    military_unit   "awdawdaw"
    unit_address    "Pushkina-Kolotushkina"
    duty_phone      123
  end

  factory :role_officer do
    rank_id       1
    post_id       1
    unit_number   12345
    unit_address  "OLOAWOIDJAlw"
    duty_phone    1234
  end
end