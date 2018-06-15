require 'rails_helper'

RSpec.describe CommentsController, :type => :controller do

  it 'creates a new comment with valid attributes' do
    @comment_attr = FactoryBot.attributes_for(:comment)
    # article = Article.last || create(:article)

    expect{
      post :create, comment: @comment_attr, article_id:  @comment_attr[:article_id]
    }.to change(Comment,:count).by(1)
end

end


