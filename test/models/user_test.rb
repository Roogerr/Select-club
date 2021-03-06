require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    def setup
      @user = User.new(first_name: "a", last_name: "last name", pseudo: "pseudo", email: "user@example.com", password: "azerty")      
    end
  
    test "should be valid" do
      assert @user.valid?
    end
  
    test "last_name should be present" do
      @user.last_name = ""
      assert_not @user.valid?
    end

    test "first_name should be present" do
      @user.first_name = ""
      assert_not @user.valid?
    end
  
    test "pseudo should be present" do
      @user.pseudo = ""
      assert_not @user.valid?
    end

    test "email should be present" do
      @user.email = ""
      assert_not @user.valid?
    end
  
  end