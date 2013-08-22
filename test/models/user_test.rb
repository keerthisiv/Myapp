require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "user must have a first name" do
  	user = User.new
  	assert !user.save
  	assert user.errors[:first_name].include?("can't be blank")
  end

  test "user must have a last name" do
  	user = User.new
  	assert !user.save
  	assert user.errors[:last_name].include?("can't be blank")
  end

  test "user must have a profile name" do
  	user = User.new
  	assert !user.save
  	assert user.errors[:profile_name].include?("can't be blank")
  end

   test "user must have unique a profile name" do
  	user = User.new
  	user.profile_name = users(:lions).profile_name
  	assert !user.save
  	puts user.errors.inspect
  	assert user.errors[:profile_name].include?("has already been taken")
  end

   test "user must have profile name without spaces" do
  	user = User.new
  	user.profile_name = "Name with spaces"
  	assert !user.save
  	assert user.errors[:profile_name].include?("is invalid")
  end



end
