require 'rails_helper'

feature 'User', :js do
  before do
    @share_1 = FactoryGirl.create(:share, share_title: "title one")
    @share_2 = FactoryGirl.create(:share, share_title: "title two")
    @share_3 = FactoryGirl.create(:share, share_title: "title three")
    visit shares_path
  end

  scenario "visit shares page" do
    expect(page).to have_content(@share_1.share_title)
    expect(page).to have_content(@share_2.share_title)
    expect(page).to have_content(@share_3.share_title)
  end

  scenario "open a share title" do
    find(".share_question", match: :first).click
    within(find(".share_question", match: :first)) do
      find(".share_answer").visible?
    end
  end
end

feature 'Admin', :js do
  before do
    @share_1 = FactoryGirl.create(:share, share_title: "title one")
    @share_2 = FactoryGirl.create(:share, share_title: "title two")
    @share_3 = FactoryGirl.create(:share, share_title: "title three")
    login_as :admin
    visit admin_shares_path
  end

  scenario "show all shares" do
    expect(page).to have_content(@share_1.share_title)
    expect(page).to have_content(@share_2.share_title)
    expect(page).to have_content(@share_3.share_title)
  end

  scenario "create a share" do
    visit new_share_path
    fill_in "share_share_title", with: "newShare"
    fill_in "share_share_text", with: "newShareText"
    click_button "Отправить"
    expect(page).to have_content("newShare")
  end

  scenario "edit share" do
    click_link "Редактировать", match: :first
    expect(page).to have_content("Редактировать акцию")
    fill_in "share_share_title", with: "editShareTitle"
    fill_in "share_share_text", with: "editShareText"
    click_button "Отправить"
    expect(page).to have_content("editShareTitle")
  end

  scenario "destroy share" do
    click_link "Удалить", match: :first
    sleep 2
    expect(page).to_not have_content(@share_1.share_title)
  end

  scenario "switch share view" do
    click_link "Не отображать", match: :first
    sleep 2
    expect(page).to have_content("Отображать")
  end
end