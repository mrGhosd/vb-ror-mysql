require 'rails_helper'

feature "Admin contact messages", :js do
  let!(:message) { create :contact_message }

  before do
    login_as :admin
    visit admin_contact_messages_path
  end

  scenario "show all the contact messages" do
    expect(page).to have_content(message.user_phone)
  end
end

feature "User contact messages ", :js do
  before do
    visit new_contact_message_path
  end

  scenario "create a new contact message" do
    within("#new_contact_message") do
      fill_in "contact_message_user_name", with: "name_1"
      fill_in "contact_message_user_email", with: "email_2"
      fill_in "contact_message_user_phone", with: "phone_3"
      fill_in "contact_message_user_message", with: "message_4"
      click_button "Отправить"
    end
    login_as :admin
    visit admin_contact_messages_path
    expect(page).to have_content "name_1"
  end
end