SUMMARY
=======

This extension allows you to add social bookmarking to your products so your customers can share pages.

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

INSTALLATION
------------

1. Install the extension with one of the following commands

      <pre><code>
	  git clone git://github.com/wsmedia/spree-social-bookmarks.git
	  
      script/extension install git://github.com/wsmedia/spree-social-bookmarks.git
	  </code></pre>

2. Add the following to your products page
  <pre><code>'<%= display_bookmarks(@product.name, product_url(@product) %></code></pre>

3. You can also add bookmarks to none product pages, just pass a title or name
   <pre><code><%= display_bookmarks(@blog.title) %></code></pre>

CREDITS
--------

Development of this extension is by [White Star Media][1].

[1]: http://www.whitestarmedia.co.uk/
