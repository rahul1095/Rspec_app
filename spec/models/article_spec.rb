require 'rails_helper'

RSpec.describe Article do

  before(:all) do

   @user = FactoryBot.create(:user)
    @article =  FactoryBot.create(:article)
    # @comment =  FactoryBot.create(:comment,:article_id=> @article.id)
    @comment2 =  FactoryBot.create(:comment,:article_id=> @article.id)
     @comment1 =  FactoryBot.create(:comment,:article_id=> @article.id)
    @like =  FactoryBot.create(:like, comment_id:@comment1.id, article_id: @article.id)
  end

  describe "comment id is present under comment" do

   it "article id is present under comment table" do
    expect(@article.id).to eql(@comment1.article_id)
   end

   it "when comment is present " do
    expect(@article.comments).not_to eql(@comment1)
   end

 it "with 2 or more comments " do
   expect(@article.comments).to eq([@comment2, @comment1])
end
   it "it is valid for attributes " do
    expect(@article).to be_valid
   end

  it { should have_many(:comments)}
  it { should have_many(:likes)}
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:body)}
end

end