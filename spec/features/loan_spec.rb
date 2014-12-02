require 'rails_helper'

feature "New user", :js do
  let!(:role_1) { create :role, default_chosen: true }
  let!(:role_2) { create :role, value: "Контрактник" }
  let!(:role_3) { create :role, value: "Офицер" }
  let!(:percent) { create :percent, :loan }
  let!(:role_percent) { create :roles_percent }
  let!(:nationality) { create :nationality }
  let!(:education) { create :education }
  let!(:relashionship) { create :relashionship }
  let!(:specialization) { create :specialization }
  let!(:sport) { create :sport_mastery }

  before do
    visit root_path
  end

  scenario "visit new loan page" do
    expect(page).to have_content("Сумма займа:")
    expect(page).to have_content("Срок займа:")
    expect(page).to have_content("Ежемесячный платеж:")
  end

  scenario "move slider values" do
    within ".main_content" do
      find("#slider_amount .ui-slider-handle").drag_by(50, 0)
      find("#slider_time .ui-slider-handle").drag_by(30, 0)
      expect(find(".pay_value").value).to eq("17930 р.")
    end
  end

  scenario "show registration page" do
    find("#slider_amount .ui-slider-handle").drag_by(50, 0)
    find("button.loan_confirm").click
    sleep 2
    expect(page).to have_content("Шаг 1")
  end

  scenario "short registration with valid params" do
    find("#slider_amount .ui-slider-handle").drag_by(50, 0)
    find("button.loan_confirm").click
    sleep 2
    fill_in "user_surname", with: "Surname"
    fill_in "user_name", with: "Name"
    fill_in "user_secondname", with: "SecondName"
    choose("user_sex_true")
    fill_in "user_date_of_birth", with: "09.07.1993"
    fill_in "user_place_of_birth", with: "OLOLOLOLO"
    fill_in "user_contact_information_attributes_email",
            with: "sokol.v93@mail.ru"
    fill_in "user_contact_phone", with: "+79214438239"
    find(".send_data_now").click
    sleep 3
    find(".ui-dialog-buttonpane .ui-dialog-buttonset button").click
    sleep 2
    expect(page).to have_content("Сумма займа:")
  end

  scenario "short registration with invalid params" do
    find("#slider_amount .ui-slider-handle").drag_by(50, 0)
    find("button.loan_confirm").click
    sleep 2
    choose("user_sex_true")
    fill_in "user_date_of_birth", with: "09.07.1993"
    fill_in "user_place_of_birth", with: "OLOLOLOLO"
    fill_in "user_contact_information_attributes_email",
            with: "sokol.v93@mail.ru"
    fill_in "user_contact_phone", with: "+79214438239"
    find(".send_data_now").click
    sleep 1
    expect(page).to have_content("Фамилия не может быть пустой")
    expect(page).to have_content("Имя не может быть пустым")
    expect(page).to have_content("Отчество не может быть пустым")
  end

  scenario "full registration with valid parameters" do
    find("#slider_amount .ui-slider-handle").drag_by(50, 0)
    find("button.loan_confirm").click
    sleep 2
    fill_in "user_surname", with: "Surname"
    fill_in "user_name", with: "Name"
    fill_in "user_secondname", with: "SecondName"
    choose("user_sex_true")
    fill_in "user_date_of_birth", with: "09.07.1993"
    fill_in "user_place_of_birth", with: "OLOLOLOLO"
    fill_in "user_contact_information_attributes_email",
            with: "sokol.v93@mail.ru"
    fill_in "user_contact_phone", with: "+79214438239"
    find(".next.step_2").click

    fill_in "user_passport_attributes_pasport_seria", with: "1234"
    fill_in "user_passport_attributes_pasport_number", with: "123456"
    fill_in "user_passport_attributes_pasport_when", with: "02.08.2003"
    fill_in "user_passport_attributes_pasport_where", with: "Vologda"
    fill_in "user_passport_attributes_pasport_code", with: "12345"
    fill_in "user_passport_attributes_definite_registration", with: "pushkina-kolotushkina"
    fill_in "user_passport_attributes_old_pasport_seria", with: "098"
    fill_in "user_passport_attributes_old_pasport_number", with: "09876"
    find(".next.step_3").click

    fill_in "user_voen_pasport_attributes_voen_seria", with: "1234"
    fill_in "user_voen_pasport_attributes_voen_number", with: "12345"
    fill_in "user_voen_pasport_attributes_voen_where", with: "Olololo"
    fill_in "user_voen_pasport_attributes_voen_when", with: "02.02.2005"
    find("#user_voen_pasport_attributes_nationality_id").click
    sleep 1
    within ".popup-main" do
      find("li", match: :first).click
    end

    find("#user_voen_pasport_attributes_nationality_id").click
    sleep 1
    within ".popup-main" do
      find("li", match: :first).click
    end

    find("#user_voen_pasport_attributes_education_id").click
    sleep 1
    within ".popup-main" do
      find("li", match: :first).click
    end

    find("#user_voen_pasport_attributes_specialization_id").click
    sleep 1
    within ".popup-main" do
      find("li", match: :first).click
    end

    find("#user_voen_pasport_attributes_sport_mastery_id").click
    sleep 1
    within ".popup-main" do
      find("li", match: :first).click
    end
    find("a.next.step_4").click

    fill_in "user_contact_information_attributes_actual_adress", with: "Ololo, 1, 36a"
    fill_in "user_contact_information_attributes_phone_adress", with: "4434231"
    fill_in "user_contact_information_attributes_contact_person_surname", with: "Ololoev"
    fill_in "user_contact_information_attributes_contact_person_name", with: "Ololosh"
    fill_in "user_contact_information_attributes_contact_person_secondname", with: "Ololoshevich"
    fill_in "user_contact_information_attributes_contact_person_phone", with: "100100100"
    find("a.next.step_5").click

    fill_in "user_role_kursant_attributes_univercity_name", with: "Univercity"
    fill_in "user_role_kursant_attributes_faculty", with: "Faculty"
    fill_in "user_role_kursant_attributes_course", with: "4"
    fill_in "user_role_kursant_attributes_graduate_date", with: "01.10.2017"
    fill_in "user_role_kursant_attributes_course_post", with: "Post"
    choose("user_role_kursant_attributes_excelent_student_true")
    choose("user_role_kursant_attributes_debt_false")
    choose("user_role_kursant_attributes_contract_false")
    fill_in "user_role_kursant_attributes_duty_phone", with: "1234"
    fill_in "user_role_kursant_attributes_education_phone", with: "4321"
    find(".full_registration_complete").click
    sleep 3
    find(".ui-dialog-buttonpane .ui-dialog-buttonset button").click
    sleep 2
    expect(page).to have_content("Сумма займа:")
  end

  scenario "full registration with invalid params" do
    find("#slider_amount .ui-slider-handle").drag_by(50, 0)
    find("button.loan_confirm").click
    sleep 2
    fill_in "user_surname", with: "Surname"
    fill_in "user_name", with: "Name"
    fill_in "user_secondname", with: "SecondName"
    choose("user_sex_true")
    fill_in "user_date_of_birth", with: "09.07.1993"
    fill_in "user_place_of_birth", with: "OLOLOLOLO"
    fill_in "user_contact_information_attributes_email",
            with: "sokol.v93@mail.ru"
    find(".next.step_2").click

    fill_in "user_passport_attributes_pasport_seria", with: "1234"
    fill_in "user_passport_attributes_pasport_number", with: "123456"
    fill_in "user_passport_attributes_pasport_when", with: "02.08.2003"
    fill_in "user_passport_attributes_pasport_where", with: "Vologda"
    fill_in "user_passport_attributes_pasport_code", with: "12345"
    fill_in "user_passport_attributes_definite_registration", with: "pushkina-kolotushkina"
    fill_in "user_passport_attributes_old_pasport_seria", with: "098"
    fill_in "user_passport_attributes_old_pasport_number", with: "09876"
    find(".next.step_3").click

    fill_in "user_voen_pasport_attributes_voen_seria", with: "1234"
    fill_in "user_voen_pasport_attributes_voen_number", with: "12345"
    fill_in "user_voen_pasport_attributes_voen_where", with: "Olololo"
    fill_in "user_voen_pasport_attributes_voen_when", with: "02.02.2005"
    find("#user_voen_pasport_attributes_nationality_id").click
    sleep 1
    within ".popup-main" do
      find("li", match: :first).click
    end

    find("#user_voen_pasport_attributes_nationality_id").click
    sleep 1
    within ".popup-main" do
      find("li", match: :first).click
    end

    find("#user_voen_pasport_attributes_education_id").click
    sleep 1
    within ".popup-main" do
      find("li", match: :first).click
    end

    find("#user_voen_pasport_attributes_specialization_id").click
    sleep 1
    within ".popup-main" do
      find("li", match: :first).click
    end

    find("#user_voen_pasport_attributes_sport_mastery_id").click
    sleep 1
    within ".popup-main" do
      find("li", match: :first).click
    end
    find("a.next.step_4").click

    fill_in "user_contact_information_attributes_actual_adress", with: "Ololo, 1, 36a"
    fill_in "user_contact_information_attributes_phone_adress", with: "4434231"
    fill_in "user_contact_information_attributes_contact_person_surname", with: "Ololoev"
    fill_in "user_contact_information_attributes_contact_person_name", with: "Ololosh"
    fill_in "user_contact_information_attributes_contact_person_secondname", with: "Ololoshevich"
    fill_in "user_contact_information_attributes_contact_person_phone", with: "100100100"
    find("a.next.step_5").click

    fill_in "user_role_kursant_attributes_univercity_name", with: "Univercity"
    fill_in "user_role_kursant_attributes_faculty", with: "Faculty"
    fill_in "user_role_kursant_attributes_course", with: "4"
    fill_in "user_role_kursant_attributes_graduate_date", with: "01.10.2017"
    fill_in "user_role_kursant_attributes_course_post", with: "Post"
    choose("user_role_kursant_attributes_excelent_student_true")
    choose("user_role_kursant_attributes_debt_false")
    choose("user_role_kursant_attributes_contract_false")
    fill_in "user_role_kursant_attributes_duty_phone", with: "1234"
    fill_in "user_role_kursant_attributes_education_phone", with: "4321"
    find(".full_registration_complete").click
    sleep 1
    expect(page).to have_content("Телефон не может быть пустым")
  end
end

feature "Logged user", :js do
  let!(:user) { create :user, :admin }
  let!(:percent) { create :percent, :loan }
  let!(:loan) { create :loan, :confirmed, :payed,
                       user_id: user.id,  percent_id: percent.id }
  let!(:loan_repayment) { create :loan_repayment, loan_id: loan.id, granted_summ: loan.sum }
  let!(:role_1) { create :role, default_chosen: true }
  let!(:role_2) { create :role, value: "Контрактник" }
  let!(:role_3) { create :role, value: "Офицер" }
  let!(:role_percent) { create :roles_percent }
  let!(:nationality) { create :nationality }
  let!(:education) { create :education }
  let!(:relashionship) { create :relashionship }
  let!(:specialization) { create :specialization }
  let!(:sport) { create :sport_mastery }

  before do
    visit root_path
    fill_in "Логин", with: user.login
    fill_in "Пароль", with: user.password
    click_button "Войти"
  end

  scenario "log in to loan page" do
    expect(page).to have_content("Калькулятор займа")
    expect(page).to have_content("Информация о текущем займе")
    expect(page).to have_content("Последние займы")
  end

  scenario "check work of loan page cells" do
    find(".calculator_title").click
    expect(find(".hidden_calculator")).to be_visible
    expect(find(".loan_info_body")).to be_visible
    find(".history_title").click
    expect(find(".history_body")).to be_visible
  end

  scenario "loan repayments page" do
    find(".history_title").click
    within ".history_body" do
      find(".user_history_item .history_item_title", match: :first).click
      find("p.value a.btn-info", match: :first).click
    end
    expect(page).to have_content(loan_repayment.granted_summ)
  end
end