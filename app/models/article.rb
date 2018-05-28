class Article < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :comments
  has_many :likes
  belongs_to :user

   validates :title, presence: true
    validates :body, presence: true

end
