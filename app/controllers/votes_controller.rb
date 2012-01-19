class VotesController < ApplicationController
  before_filter :init_tip

  def create
    @tip.upvote!
  end

  def destroy
    @tip.downvote!
  end

  private 
  def init_tip
    @tip = Tip.find params[:id]
  end

end
