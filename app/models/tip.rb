class Tip < ActiveRecord::Base
  has_many :votes
  has_many :upvotes
  has_many :downvotes
  has_many :users, :through => :votes
  
  def votes
    self[:votes,0] if self[:votes].nil?
    self[:votes]
  end

  def upvote
    self.votes += 1
  end

  def upvote!
    upvote
    save
  end

  def downvote
    self.votes -= 1
  end

  def downvote!
    downvote
    save
  end

end
