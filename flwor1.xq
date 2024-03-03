for $item in doc("RSS feeds/feed1_extremetech.rss")/rss/channel/item
let $month := "Mar"
where $month = substring($item/pubDate, 9, 3)
return $item/title
