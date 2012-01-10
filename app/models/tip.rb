class Tip < ActiveRecord::Base
  
  def votes
    self[:votes,0] if self[:votes].nil?
    self[:votes]
  end

  def upvote
    self.votes += 1
  end

  def downvote
    self.votes -= 1
  end
end
