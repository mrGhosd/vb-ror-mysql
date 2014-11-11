require 'rails_helper'

feature "Deposit page for user", :js do
  let!(:percent) { create :percent, :deposit, value: 0.42 }
  scenario "visit deposit page" do
    visit new_users_deposit_path
    expect(page).to have_content("Калькулятор вклада")
  end

  scenario "use deposit calculator and choose values for sum and time" do
    visit new_users_deposit_path
    find("#slider_deposit_amount .ui-slider-handle").drag_by(60, 0)
    click_button "Получить денежное довольствие"
    within "#new_user" do
      fill_in "user_surname", with: "Surname"
      fill_in "user_name", with:"Name"
      fill_in "user_secondname", with: "Secondname"
      fill_in "user_contact_phone", with: 123456789
      click_button "Оставить заявку"
    end
    sleep 2
    find(".ui-dialog-buttonpane .ui-dialog-buttonset button").click
    sleep 1
    expect(page).to have_content("Сумма займа")
  end

end

feature "Deposit page for current user", :js do
  let!(:user) { create :user, :admin }
  let!(:percent){ create :percent, :deposit, value:0.42 }
  let!(:deposit) { create :deposit, :confirmed,
                          user_id: user.id,
                          percent_id: percent.id }
  let!(:contribution_account) { create :contribution_account, :removed, deposit_id: deposit.id }
  before do
    visit root_path
    fill_in "Логин", with: user.login
    fill_in "Пароль", with: user.password
    click_button "Войти"
    visit new_users_deposit_path
  end

  scenario "see the menus list" do
    expect(page).to have_content("Калькулятор депозита")
    expect(page).to have_content("Список вкладов")

    find(".deposit_calc_title").click
    expect(find(".deposit_calc_wrapper")).to be_visible
    find(".deposit_calc_title").click
    find(".deposit_list_title").click
    expect(find(".deposit_list_item_title")).to be_visible
  end

  scenario "deposit calculator" do
    find(".deposit_calc_title").click
    expect(find(".deposit_calc_wrapper")).to be_visible
    find("#slider_deposit_amount .ui-slider-handle").drag_by(60, 0)
    find("#slider_deposit_time .ui-slider-handle").drag_by(50, 0)
    find(".main_percent_slider .right_side").click
    click_button "Получить денежное довольствие"
    sleep 2
    find(".ui-dialog-buttonpane .ui-dialog-buttonset button").click
    sleep 1
    expect(page).to have_content("Сумма займа")
  end

  scenario "deposits list" do
    find(".deposit_list_title").click
    expect(find(".deposit_list_item_title")).to be_visible
    find(".deposit_list_item_title", match: :first).click
    expect(find(".list_body_cell", match: :first)).to be_visible
    click_link "Просмотр истории вклада"
    expect(page).to have_content("ID")
    expect(page).to have_content(contribution_account.operation_summ)
   end
end