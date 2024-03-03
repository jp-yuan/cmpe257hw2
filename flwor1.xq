for $item in doc("RSS feeds/feed1_extremetech.rss")/rss/channel/item
where substring($item/pubDate, 9, 8) = "Mar 2024"
return $item/title
