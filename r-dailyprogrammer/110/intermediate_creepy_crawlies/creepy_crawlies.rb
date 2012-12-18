require 'open-uri'
require 'json'


# Using reddit json api
json = JSON::load(open('http://www.reddit.com/r/nosleep.json?top=100'))
p json["data"]["children"]

