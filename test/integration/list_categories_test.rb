require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest
  def setup
    @category = categories(:one)
    @category2 = categories(:two)
  end

  test "should show categories listing" do
    get '/categories'
    assert_select "h4", text: @category.cname
    assert_select "h4", text: @category2.cname
  end
end