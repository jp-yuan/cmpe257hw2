for $item in doc("RSS feeds/feed01.xml")/rss/channel/item
where contains($item/title, "Taylor")
  and contains ($item/title, "Swift")
order by $item/pubDate descending
return 
  <entry>
    <title>{$item/title}</title>
    <id>{$item/link}</id>
    <summary>{$item/description}</summary>
    <category>{$item/category}</category>
    <updated>{$item/pubDate}</updated>
  </entry>
