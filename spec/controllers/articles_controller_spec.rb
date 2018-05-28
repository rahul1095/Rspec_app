require 'rails_helper'

RSpec.describe ArticlesController do

  describe 'GET to index' do
    before { get :index }
    it { is_expected.to respond_with :success }
    it { is_expected.to render_template :index }
  end



 describe 'GET to show for existing article' do
    before do
      @article = FactoryBot.create(:article)
      get :show, :id => @article.to_param
    end

    it { is_expected.to respond_with :success }
    it { is_expected.to render_template :show }
  end

  describe 'Post to create for existing article' do
    before do
      @article = FactoryBot.attributes_for(:article)
      post :create, :article => @article
      end
      # it { is_expected.to respond_with :success }
      it { is_expected.to redirect_to(articles_path)}
  end



  describe 'GET to edit for existing article' do
    before do
    @article = FactoryBot.create(:article)
    get :edit, :id => @article.to_param
    end

    it { is_expected.to respond_with :success }
    it { is_expected.to render_template :edit }
  end

 describe 'Put to update for existing article' do
    before do
    @article = FactoryBot.create(:article)
    put :update, :id => @article.to_param
    end

    # it { is_expected.to respond_with :success }
    it { is_expected.to redirect_to(article_path(@article)) }
 end

end