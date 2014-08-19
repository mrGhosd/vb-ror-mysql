require '../test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @u = index(:coursant)
  end



  test "invalid without a name" do
    u = User.new
    assert !u.valid?, "Name is not being validated!"
  end

  test "valid with all attributes" do
    assert @u.valid?, "User is not valid"
  end

  test "invalid name gives error message" do
    should validate_presence_of(:name)
  end

  test "invalid graveyard gives error message" do
    @z.graveyard = nil
    assert_presence(@z, :graveyard)
  end

  test "can generate avatar_url" do
    assert_equal "http://vk.com/#{@u.id}.jpg", @u.avatar_url
  end

  test "should respond to deposit" do
    assert_respond_to @u, :deposits
  end

  test "should contain deposits" do
    assert_equal deposits(:good_deposit), @u.deposits
  end

  test "should contain only deposits that belong to zombie" do
    assert @u.deposits.all? { |d| d.index == @u }
  end
end
