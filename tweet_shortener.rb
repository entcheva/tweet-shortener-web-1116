def word_substituter(tweet)

  dictionary = {
  "hello" => 'hi',
  "to" => '2',
  "two" => "2",
  "too" => "2",
  "for" => '4',
  "For" => "4",
  "four" => "4",
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"
  }

  tweet = tweet.split(" ")
  i = 0

  tweet.each do |word|
    if dictionary.keys.include?(word)
      tweet[i] = dictionary[word]
    end
    i += 1
  end
  tweet.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end


def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0...137] + "..."
  else
    tweet
  end
end
