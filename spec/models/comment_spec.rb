require 'rails_helper'

RSpec.describe Comment do

  before(:all) do

   @user = FactoryBot.create(:user)
    @article1 =  FactoryBot.create(:article)
    @comment =  FactoryBot.create(:comment)
    @like =  FactoryBot.create(:like)

  end

  # it { should validate_presence_of(:title)}
  it { should validate_presence_of(:body)}

  # it "is valid with valid attributes" do
  #   @value = "Mihir"
  #   expect(@article).to eq(@value)
  # end

  # it "count like of Article last" do
  #   byebug
  #    article_likes = Article.last.likes.count
  #    puts  article_likes
  #   expect(article_likes).to eq(0)
  # end

  # it "count like of Article last" do
  #    article_likes = Article.last.likes.count
  #    puts  article_likes
  #   expect(article_likes).to eq(0)
  # end

  # it "has a unique username" do
  #   user2 = build(:post, title: "Joe")
  #   expect(user2).to_not be_valid
  # end
endrequire 'rails_helper'

RSpec.describe Comment, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
