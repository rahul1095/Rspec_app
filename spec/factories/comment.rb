FactoryBot.define do

	factory :comment do
	    body                 {"This is for  a Article comment"}
	    user_id          {1}
	   # article_id        {1}
	    # association :like
	end
end