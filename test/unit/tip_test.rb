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

  test "upvoting again again" do
    tip = Tip.new
    tip.upvote!
    tip.reload
    assert tip.votes == 1
  end

  test "downvoting" do
    tip = Tip.new
    assert tip.downvote
  end

  test "downvoting again" do
    tip = Tip.new
    tip.downvote
    assert tip.votes == -1
  end

  test "downvoting again again" do
    tip = Tip.new
    tip.downvote!
    tip.reload
    assert tip.votes == -1
  end
end
