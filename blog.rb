
# #parent class of BlogPost class that keeps track of total blog posts
# class Blog
# 	@@total_blog_posts = 0
# 	@@blog_posts = Array.new

# 	def initialize
# 		@@total_blog_posts += 1
# 	end

# 	def self.post_count
# 		puts "You have a total of #{@@total_blog_posts} blog posts."
# 	end

# #outputs all blog posts to the terminal
# 	def publish
# 		blog_posts.each do |post|
# 			puts post
# 		end
# 	end
# end

# class BlogPost < Blog
# 	def set_title=(post_title)
# 		@title = post_title
# 	end

# 	def get_title
# 		return @title
# 	end

# 	def set_content=(post_content)
# 		@content = post_content
# 	end

# 	def get_content
# 		return @content
# 	end

# 	def set_publish_date=(publish_date)
# 		@publish_date = publish_date
# 	end

# 	def get_publish_date
# 		return @publish_date
# 	end

# 	def set_author=(author_name)
# 		@name = author_name
# 	end

# 	def get_author
# 		return @name
# 	end
# end

# #logic to prompt user for content to add to a blog post
# puts "Do you want to create another blog post? [Y/N]"

# answer = gets.chomp.downcase

# #if user enters Y, loop through questions to add content
# blog_post_questions = ["What is your title?", 
# 	"What is the publish date?"
# 	"What is your content",  
# 	"What is the author name?"
# ]

# if answer == y 
# 	blog_post_questions.each {|question| print question}
# elsif answer == n 
# 	print "You have a total of #{@@total_blog_posts} blog posts."
# else
# 	puts "I'm not sure what you want to do. Please enter Y/N."
# end


class Blog

	@@all_blog_posts = []
	@@num_blog_posts = 0

def self.all
	@@all_blog_posts
end

def self.number
	@@num_blog_posts
end

def self.add(things)
	@@all_blog_posts << things
	@@num_blog_posts += 1
end

def self.publish
	@@all_blog_posts.each do |post|
		puts "Title:\n #{post.title}"
		puts "Body:\n #{post.content}"
		puts "Publish Date:\n #{post.created_at}"
	end
end

end

class BlogPost < Blog

	def self.create
		post = new
		puts "Name your blog post:"
		post.title = gets.chomp
		puts "Your blog post content:"
		post.content = gets.chomp
		post.created_at = Time.new
		post.save
		puts "Do you want to create another post? [Y/N]"
		create if gets.chomp.downcase == 'y'
	end

	def title
		@title
	end

	def title=(title)
		@title = title
	end

	def created_at
		@created_at
	end

	def created_at=(created_at)
		@created_at = created_at
	end

	def content
		@content
	end

	def content=(content)
		@content = content
	end

	def save
		BlogPost.add(self)
	end

end

BlogPost.create
all_blog_posts = BlogPost.all
num_blog_posts = Blog.number
puts all_blog_posts.inspect
BlogPost.publish
puts num_blog_posts



















































