class Blog
	def initialize 
		@post = []
	end

	def add_post post
		@post << post
	end

	def create_front_page
		@post.sort_by! { |post| post.date}
	end

	def publish_front_page
		@post.each do |post|
			if post.sponsor == 1
				puts "**********" + post.title + "*************" 
			else 
				puts post.title
			end
			puts "******************"
			puts post.text
			puts "------------------"
		end
	end

	def sponsored_post
		post.
	end
end

class Post
	attr_reader :title, :date, :text

	def initialize(title,date,text,sponsor)
		@title = title
		@date = date
		@text = text
		@sponsor = sponsor
	end	
end

blog = Blog.new

blog.add_post Post.new("Post Title 1", "3/10/15", "Post 1 text",0)
blog.add_post Post.new("Post Title 2", "2/10/15", "Post 2 text",1)
blog.add_post Post.new("Post Title 3", "1/10/15", "Post 3 text",0)

blog.create_front_page
blog.publish_front_page
