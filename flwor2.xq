
let $searchterm1 := "Taylor"
let $searchterm2 := "Swift"
for $item in doc("RSSFeeds/feed1_extremetech.rss")/rss/channel/item
where contains(text(), $searchterm1)
and contains (text(), $searchterm2)
order by $item/pubDate descending
return 
  <entry>
    <title>{$item/title}</title>
    <id>{$item/link}</id>
    <updated>{$item/pubDate}</updated>
    <content type="text">{$item/description}</content>
  </entry>