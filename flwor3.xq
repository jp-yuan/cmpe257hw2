let $term := "specific term" -- Replace with your desired term
for $item in database("RSSFeeds")/rss/channel/item
where contains(text(), $term)
order by $item/pubDate
return $item/pubDate[1]





let $searchTerm := "your_term_here" (: Specify your term :)

let $oldestDate :=
    min(
        for $feed in collection("RSSFeeds")/atom:feed
        for $entry in $feed/atom:entry
        let $containsTerm := contains($entry/atom:title, $searchTerm)
        where $containsTerm
        return xs:dateTime($entry/atom:published)
    )

return $oldestDate