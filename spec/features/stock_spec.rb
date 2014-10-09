require 'spec_helper'

describe Stock do
  describe "User" do

  end
  #
  # describe "Admin", :js => true, :type => :feature do
  #     before do
  #       @user = User.create(attributes_for :user)
  #       Loan.create(loan_sum: 10000, user_id: @user.id)
  #       ApplicationController.any_instance.stub(:current_user).and_return(@user)
  #       allow(@user).to receive(:is_admin?).and_return(true)
  #       binding.pry
  #       @stock_1 = FactoryGirl.create(:stock)
  #       @stock_2 = FactoryGirl.create(:stock)
  #       @stock_3 = FactoryGirl.create(:stock)
  #       visit(root_path)
  #       fill_in "Логин", with: @user.login
  #       fill_in "Пароль", with: @user.password
  #       click_button 'Войти'
  #     end
  #
  #   it "show all stocks" do
  #     sleep 10
  #     expect(page).to have_content("1")
  #     expect(page).to have_content("2")
  #     expect(page).to have_content("3")
  #   end
  #
  #   it "click on 'edit' link" do
  #     sleep 10
  #     within "tr.stock_#{@stock_2.id}" do
  #       click_link 'Редактировать'
  #     end
  #     expect(page).to have_content('Редактирование новости')
  #   end
  # end
end