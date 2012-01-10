require 'test_helper'

class TipTest < ActiveSupport::TestCase
  test "upvoting" do
    tip = Tip.new
    assert tip.upvote
  end

  test "upvoting again" do
    tip = Tip.new
    tip.upvote
    assert tip.votes == 1
  end
end
