require 'rails_helper'

feature "New user", :js do
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
end