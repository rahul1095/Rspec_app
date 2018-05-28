# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
# Mime::Type.register_alias "text/html", :iphone



class Author < ApplicationRecord
	has_many :books, dependent: :destroy

end


class  Book < ApplicationRecord
 	belongs_to :author
end