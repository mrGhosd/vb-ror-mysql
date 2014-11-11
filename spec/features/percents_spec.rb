require 'rails_helper'

feature "Admin for percents", :js do
  let!(:loan_percent) { create :percent, :loan, min_summ: 3 }
  let!(:deposit_percent) { create :percent, :deposit, max_summ: 4 }

  before do
    login_as :admin
    visit percents_path
  end

  scenario 'show all percents' do
    expect(page).to have_content(loan_percent.min_summ)
    expect(page).to have_content(loan_percent.max_summ)
  end

  scenario 'delete percent' do
    expect do
      find("td.percent_id", match: :first).click
      within("tr.actionMenu") do
        find(".delete-percent").click
      end
    end.to change(Percent, :count).by(-1)
  end

  scenario 'create a percent' do
    visit new_percent_path
    within "form" do
      fill_in "percent_value", with: 3.14
      fill_in "percent_begin_date", with: "01.01.1970"
      fill_in "percent_end_date", with: "09.09.2027"
      fill_in "percent_max_summ", with: 10
      fill_in "percent_min_summ", with: 100
      fill_in "percent_min_time", with: 1
      fill_in "percent_max_time", with: 12
      choose("percent_loan_or_deposit_true")
      click_button "Отправить"
    end
    expect(page).to have_content("3.14")
  end

  scenario 'update a percent' do
    find("td.percent_id", match: :first).click
    within("tr.actionMenu") do
      find(".btn-success").click
    end
    within "form" do
      fill_in "percent_value", with: 3.14
      fill_in "percent_begin_date", with: "01.01.1970"
      fill_in "percent_end_date", with: "09.09.2027"
      fill_in "percent_max_summ", with: 10
      fill_in "percent_min_summ", with: 100
      fill_in "percent_min_time", with: 1
      fill_in "percent_max_time", with: 12
      choose("percent_loan_or_deposit_false")
      click_button "Отправить"
    end
    expect(page).to have_content("3.14")
  end
end