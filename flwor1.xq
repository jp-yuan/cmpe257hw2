for $item in doc("RSS feeds/feed05.xml")/rss/channel/item
let $month := "02"
where $month = substring($item/pubDate, 6, 2)
return $item/title
