def love_note
	puts "Are you good or bad today? Enter: Y/N"
	answer = gets.chomp.downcase
	
	while answer == "y"
		puts "I love you!"
	end
end

love_note


all_tweets = ["My first tweet", 
	"My second tweet", 
	"My third tweet", 
	"I have the most boring tweets"
]

all_tweets.each do |tweet|
	puts tweet
end