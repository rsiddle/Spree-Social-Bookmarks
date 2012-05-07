#SpreeSocialBookmarks

Easily add social links to your product pages:

	<%= display_bookmarks%>
	<%= display_bookmarks("Title", "http://url.com/to/product-page") %>

You'll need to add social images to your `/assets/store/social` path (you can modify the path pointing to social images via preferences)
I've found [web2icon](http://www.fasticon.com/freeware/web-2-icons/) to be a good, clean social icon set.

Supports the "spree_email_to_friend" extension.