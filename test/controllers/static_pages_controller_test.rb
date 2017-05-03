require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  def setup
  	@base_title = "Ruby on Rails Tutorial Sample App"
  end
  #this function will run before all tests.. which is just assigning a string to a variable.
  #this variable will be used in place of repetitive strings in below tests

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
    #the above code will check for the presence of <title> containing the following string
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
  	get :about
  	assert_response :success
  	assert_select "title", "About | #{@base_title}"
  end

end
