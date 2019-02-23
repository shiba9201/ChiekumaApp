require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  
  def setup 
    @user = users(:takumi)
    @micropost = @user.microposts.new(name:"タピオカ", recommendation:"つぶつぶ！",
                               picture:"img", store:"ゴンチャ")
  end 
  
  test "content should be present" do
    @micropost.name = "   "
    assert_not @micropost.valid?
  end
end
