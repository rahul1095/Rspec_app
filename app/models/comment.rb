class Comment < ActiveRecord::Base
  attr_accessible :article_id, :body, :user_id
  belongs_to :article
  belongs_to :user
  has_many :likes

   # validates :article_id, presence: true
   validates :body, presence: true
end
