for $item in doc(""RSSFeeds/feed1_extremetech.rss")/channel/item
let $targetterm := "Deal"
where contains(text(), $targetterm)
order by $item/pubDate
return $item/pubDate
