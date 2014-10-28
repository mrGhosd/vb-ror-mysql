require 'spec_helper'

feature "Callbacks for admin", :js do
  let!(:callback) { create :callback }

  before do
    login_as :admin
    visit callbacks_path
  end

  scenario "visit callbacks path" do
    expect(page).to have_content(callback.call_second_name)
  end
end

feature 'Callbacks for user', :js do
  let!(:callback) { create :callback }

  before do
    visit root_path
  end

  scenario 'create a callback' do
    within ".callback_form" do
      find(".callback_arrow").click
      fill_in "callback_call_surname", with: "AAA"
      fill_in "callback_call_name", with: "AAA"
      fill_in "callback_call_second_name", with: "AAA"
      fill_in "callback_call_email", with: "AAA"
      fill_in "callback_call_phone", with: "AAA"
      click_button "Отправить"
    end
    login_as :admin
    visit callbacks_path
    expect(page).to have_content("AAA")
  end
end