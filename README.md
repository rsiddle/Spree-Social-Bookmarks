#Usage

Gemfile:

	gem 'spree_social_bookmarks', :git => 'git://github.com/wsmedia/spree-social-bookmarks.git'

Easily add social links to your product pages:

	<%= display_bookmarks%>
	<%= display_bookmarks("Title", "http://url.com/to/product-page") %>

You'll need to add social images to your `/assets/store/social` path (you can modify the path pointing to social images via preferences)
I've found [web2icon](http://www.fasticon.com/freeware/web-2-icons/) to be a good, clean social icon set.

Current bookmarks include:  

* ask
* blinklist
* blogmarks
* delicious
* digg
* reddit
* dzone
* facebook
* fark
* furl
* google bookmarks
* magnolia
* netscape
* newsvine
* reddit
* shoutwire
* simpy
* slashdot
* spurl
* stumbleupon
* swik
* technorati
* windows live
* yahoo myweb2
* `spree_email_to_friend` extension

CREDITS
--------

Development of this extension is by:  

* [White Star Media][1]
* [Michael Bianco][2]

[1]: http://www.whitestarmedia.co.uk/
[2]: http://mabblog.com/
