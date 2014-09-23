require 'spec_helper'

describe User do

  # it "has a valid factory" do
  #   expect(FactoryGirl.build(:user)).to be_valid                              #using FactoryGirl
  # end
  #
  # it "is valid with a firstname, lastname and second name" do
  #   expect(FactoryGirl.build(:user)).to be_valid                              #using FactoryGirl
  # end
  #
  # it "is invalid without first name" do
  #   expect(FactoryGirl.build(:user, name: nil)).to  have(1).errors_on(:name)  #using FactoryGirl
  # end
  #
  # it "is invalid without ununiqueness login" do
  #   User.create( name: "ololol",
  #                       surname: "awdawdaw",
  #                       secondname: "wadawdaw",
  #                       login: "1")
  #   user = User.create( name: "ololol",
  #                       surname: "awdawdaw",
  #                       secondname: "wadawdaw",
  #                       login: "1")
  #
  #   expect(user).to have(1).errors_on(:login)
  # end
  #
  # it "is invalid without surname"
  # it "is invalid without secondname"
  # it "returns a contacts full name as a string"
  # it "returns user's full name as a string" do
  #   user = User.create(name: "ololol",
  #                      surname: "awdawdaw",
  #                      secondname: "wadawdaw")
  #   expect(user.full_name).to eq 'awdawdaw ololol wadawdaw'
  # end
  #
  # it "has a loan" do
  #   # binding.pry
  #   expect(FactoryGirl.build(:user).loan.count).to eq 1
  # end
end