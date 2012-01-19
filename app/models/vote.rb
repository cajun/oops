class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :tip

  
  validate :vote?

  def vote?
    false
  end

  def siblings_and_self
    tip.votes
  end

  def siblings
    tip.votes - [self]
  end
end
