require 'open-uri'
require 'json'

json = JSON.parse(open('http://www.reddit.com/r/nosleep.json?limit=10').read)

json["data"]["children"].each do |story|
	puts " === #{story["data"]["title"]} === "
	puts
	puts story["data"]["selftext_html"]
	puts
end

