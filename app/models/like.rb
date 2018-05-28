class Like < ActiveRecord::Base
  attr_accessible :comment_id, :article_id, :user_id
  belongs_to :article
  belongs_to :comment
  belongs_to :user
end
