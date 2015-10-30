class Login

	def initialize
		@user = "iago"
		@password = "moure"
	end
	def get_text
		text = gets.chomp
	end
	def count 
		puts get_text.split.count
	end
	def valid_user?
		(@user == get_user) && (@password == get_password)
	end
	def validate 
		if valid_user?
			puts "Texting...!"
			count
		else
			puts "Login error"
		end
	end
	def start
		validate
	end
private
	def get_user
		puts "User name?"
		user_name = gets.chomp
	end
	def get_password
		puts "password?"
		password_user = gets.chomp
	end
end

login = Login.new
login.start