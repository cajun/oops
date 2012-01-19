require 'test_helper'

class VotesControllerTest < ActionController::TestCase
  test "should post create" do
    post :create, id: Tip.first.id
    assert_response :success
  end

  test 'should really create' do
    tip = Tip.first
    post :create, id: tip.id
    tip.reload
    assert_equal tip.votes, 1
  end

  test "should delete destroy" do
    delete :destroy, id: Tip.first.id
    assert_response :success
  end

  test 'should really destroy' do
    tip = Tip.first
    delete :destroy, id: tip.id
    tip.reload
    assert_equal tip.votes, -1
  end

end
