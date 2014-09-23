require 'spec_helper'
require 'capybara/rspec'

describe Stock do
  describe "User" do

  end

  describe "Admin" do
    before do
      # @user = double :user
      # .current_user = user                      #miracle 1
      # allow(@user).to receive(:is_admin?).and_return(true) #miracle 2
    end

    # it "log in" do
    #   visit root_path
    #   within ".authorization" do
    #     fill_in 'Логин', with: '3'
    #     fill_in 'Пароль', with: '3'
    #     click_button 'Войти'
    #   end
    #   # ac = ApplicationController.new
    #   # ac.login
    # end
  end
end