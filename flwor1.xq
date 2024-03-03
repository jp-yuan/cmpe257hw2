for $item in doc("RSS feeds/feed1_extremetech.rss")/channel/item
where month-from-date(format-date($item/pubDate, "[Y0001]-[M01]-[D01]")) = 2
return $item/title