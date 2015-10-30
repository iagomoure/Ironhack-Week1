require 'pry'

class Blog
	def initialize 
		@posts = []
		@actual_page = 1
		@num_pages = 0
	end

	def add_post post
		@posts << post
	end

	def create_front_page
		@posts.sort_by! { |post| post.date}
	end

	def publish_front_page
		@num_pages = @posts.length
		page = @posts.slice((@actual_page * @num_pages / 3) - 3, 3)
		
		page.each do |post|
			if post.sponsor == 1
				puts "*************" + post.title + "***************"
			else
				puts post.title
			end
			puts "******************"
			puts post.text
			puts "------------------"

		end
		#después de la impresión sacar el nº de páginas
		if @num_pages % 3 == 0
			pages = @num_pages/3
		else
			pages = @num_pages/3 + 1
		end

		binding.pry
		#rahcerlo con each
		index = 1
		while  pages != 0
			print index.to_s + " "
			index = index + 1 
			pages = pages - 1
		end	
		puts ""
		pagination
	end

	def pagination
		puts "Choose: Next o Prev"
		move = gets.chomp.downcase
			if move == "next"
				@actual_page = @actual_page + 1
				publish_front_page
			elsif move == "prev"
				@actual_page = @actual_page - 1 
				publish_front_page
			end
	end
end

class Post
	attr_reader :title, :date, :text, :sponsor

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
blog.add_post Post.new("Post Title 4", "4/10/15", "Post 4 text",1)
blog.add_post Post.new("Post Title 5", "5/10/15", "Post 5 text",0)
blog.add_post Post.new("Post Title 6", "6/10/15", "Post 6 text",1)
blog.add_post Post.new("Post Title 7", "7/10/15", "Post 7 text",0)
blog.add_post Post.new("Post Title 8", "8/10/15", "Post 8 text",1)
blog.add_post Post.new("Post Title 9", "2/10/15", "Post 9 text",0)


blog.create_front_page
blog.publish_front_page

puts "hi"
