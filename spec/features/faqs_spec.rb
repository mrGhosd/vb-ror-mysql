require 'spec_helper'

feature 'FAQ for user', :js do
  let!(:faqs_list)  { create_list(:faq, 12) }

  before do
    visit faqs_path
  end

  scenario 'visit faqs path' do
    expect(page).to have_content(faqs_list.first.question)
  end

  scenario "show a faq answer" do
    find(".faq_item .faq_question", match: :first).click
    within(".faq_question", match: :first) do
      find(".faq_answer").visible?
    end
  end
end

feature 'FAQ for admin', :js do

  let!(:faq) { create :faq }

  before do
    login_as :admin
    visit admin_faqs_path
  end

  scenario 'show all faq' do
    expect(page).to have_content(faq.question)
  end

  scenario 'create a new faq' do
    visit new_faq_path
    within "form" do
      fill_in "faq_question", with: "answer_1111"
      fill_in "faq_answer", with: "2"
      click_button "Отправить"
    end
    expect(page).to have_content("answer_1111")
  end

  scenario 'edit an old faq' do
    click_link 'Редактировать', match: :first
    within "form" do
      fill_in "faq_question", with: "answer_1111"
      fill_in "faq_answer", with: "2"
      click_button "Отправить"
    end
    expect(page).to have_content("answer_1111")
  end

  scenario 'delete faq' do
    click_link 'Удалить', match: :first
    sleep 2
    expect(page).to_not have_content(faq.question)
  end
end