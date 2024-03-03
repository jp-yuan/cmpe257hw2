for $item in doc("RSS feeds/feed05.xml")/rss/channel/item
let $targetterm := "was"
where contains($item/title, $targetterm)
order by $item/pubDate
count $rank
where $rank = 1
return 
 <item>
     {$item/title, $item/pubDate}
 </item>
