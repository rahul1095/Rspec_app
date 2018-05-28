require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
	test "should_not_save_article_without_title" do
	  article = Article.new
	  assert !article .save
	end

	test "should_not_save_comment_without_body" do
	  comment = Article.last.comments.build
	  assert !comment.save
	end

	test "last Article comments Counts" do
	  article_comments = Article.last.comments.count
	  assert_equal( 2 , article_comments)
	end

	test "last article likes Counts" do
		article_likes = Article.last.likes.count
		puts  article_likes
	  assert_equal( 1 ,article_likes)
	end
end

