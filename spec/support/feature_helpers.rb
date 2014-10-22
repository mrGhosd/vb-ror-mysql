require 'capybara/rails'

def login_as(role)
  @user = User.create(attributes_for :user, role)
  visit root_path
  fill_in "Логин", with: @user.login
  fill_in "Пароль", with: @user.password
  click_button "Войти"
end