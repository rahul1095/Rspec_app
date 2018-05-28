require 'rails_helper'

RSpec.describe Post, :type => :model do

  # before(:all) do
  #   @post = create(:post)
  # end
  @article = Article.first.title

  it "is valid with valid attributes" do
    expect(@article).to be_valid
  end

  # it "has a unique username" do
  #   user2 = build(:post, title: "Joe")
  #   expect(user2).to_not be_valid
  # end
end