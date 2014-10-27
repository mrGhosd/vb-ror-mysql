require 'spec_helper'

feature 'Partner for user', :js do
  let!(:disable_partner) { create :partner, partner_title: "DISABLED", enabled: false }
  let!(:enabled_partner) { create :partner }

  before do
    visit partners_path
  end

  scenario 'visit partners page' do
    expect(page).to have_content(enabled_partner. partner_title)
  end

  scenario 'click on image and redirect to partner path' do
    find(".partner_image a", match: :first).click
    expect(page).to have_content("Наш партнер - #{enabled_partner.partner_title}")
  end

  scenario 'click on partner link and redirect to partners page' do
    find('.partner_title a', match: :first).click
    expect(page).to have_content("mail.ru")
  end
end

feature 'Partner for admin', :js do
  let!(:disable_partner) { create :partner, partner_title: "DISABLED", enabled: false }
  let!(:enabled_partner) { create :partner }

  before do
    login_as :admin
    visit admin_partners_path
  end

  scenario 'visit admin partners page' do
    expect(page).to have_content(enabled_partner.partner_title)
  end

  scenario 'create new partner' do
    visit new_partner_path
    within "#new_partner" do
      fill_in "partner_partner_title", with: "newPartnerTitle"
      fill_in "partner_partner_description", with: "newPartnerDescription"
      fill_in "partner_partner_url", with: "newPartnerURL"
      click_button "Отправить"
    end
    expect(page).to have_content("newPartnerTitle")
  end

  scenario 'update an old partner' do
    click_link "Редактировать", match: :first
    within "form" do
      fill_in "partner_partner_title", with: "editPartnerTitle"
      fill_in "partner_partner_description", with: "editPartnerDescription"
      fill_in "partner_partner_url", with: "editPartnerURL"
      click_button "Отправить"
    end
    expect(page).to have_content("editPartnerTitle")
  end

  scenario 'delete partner' do
    click_link "Удалить", match: :first
    sleep 2
    expect(page).to_not have_content(disable_partner.partner_title)
  end

  scenario 'switch partner visibility' do
    click_link "Отображать", match: :first
    sleep 2
    disable_partner.reload
    expect(disable_partner.enabled).to eq(true)
  end
end