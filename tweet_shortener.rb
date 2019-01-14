# Write your code here.
def word_substituter(tweet)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2", 
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@", 
    "and" => "&"
  }
  words = tweet.split(" ")
  words = words.collect do |word|
    if dictionary[word.downcase]
      word = dictionary[word.downcase]
    end
    word
  end
  words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets = tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  unless tweet.nil?
    if tweet.length > 140
      tweet = word_substituter(tweet)
    end
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    shortened_tweet = shortened_tweet.slice(0, 140)
    puts shortened_tweet.length
  end
  shortened_tweet
end
