require 'rails_helper'

RSpec.describe Comment do

  before(:all) do
   # @user = FactoryBot.create(:user)
    # @article1 =  FactoryBot.create(:article)
    @comment =  FactoryBot.create(:comment)
    # @like =  FactoryBot.create(:like)
  end

  # it { should validate_presence_of(:title)}
  it { should validate_presence_of(:body)}
  it { should belong_to(:article)}
  it { should have_many(:likes)}

end
