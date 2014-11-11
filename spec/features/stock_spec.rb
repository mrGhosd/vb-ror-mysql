require 'rails_helper'

describe Stock do
  describe "User" do

  end
  #
  describe "Admin", :js => true, :type => :feature do
    before :each do
      @stock_1 = FactoryGirl.create(:stock, stock_title: "first")
      @stock_2 = FactoryGirl.create(:stock, stock_title: "second")
      @stock_3 = FactoryGirl.create(:stock, stock_title: "third")
      login_as :admin
      visit stocks_path
    end

    it "show all stocks" do
      expect(page).to have_content("1")
      expect(page).to have_content("2")
      expect(page).to have_content("3")
    end

    it "edit stock" do
      find(".btn-group > a.btn-info", match: :first).click
      sleep 1
      click_link "Редактировать"
      expect(page).to have_content("Редактирование новости")
      fill_in "stock_stock_title", with: "TestStockTitle"
      fill_in "stock_stock_text", with: "TestStockText"
      click_button "Отправить"
      expect(page).to have_content("TestStockTitle".first(3))
      expect(page).to have_content("TestStockText".first(5))
    end

    it "create a stock" do
      click_link 'Создать новость'
      expect(page).to have_content("Создать новость")
      fill_in "stock_stock_title", with: "NewStockTitle"
      fill_in "stock_stock_text", with: "NewStockText"
      click_button "Отправить"
      expect(page).to have_content("NewStockTitle".first(3))
      expect(page).to have_content("NewStockText".first(5))
    end

    it "destroy a stock" do
      find(".btn-group > a.btn-info", match: :first).click
      sleep 1
      click_link "Удалить", match: :first
      sleep 2
      expect(page).to_not have_content("first")
    end
  end
end