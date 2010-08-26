SUMMARY
=======

This extension allows you to add social bookmarking to your products so your customers can share pages.

Current bookmarks include: 
delicious
digg
reddit
blinklist
dzone
newsvine
furl
spurl
simpy
fark
blogmarks
myweb2
wists

INSTALLATION
------------

1. Install the extension with one of the following commands

      git clone git://github.com/wsmedia/spree-social-bookmarks.git
      script/extension install git://github.com/wsmedia/spree-social-bookmarks.git

2. Add '<%= display_bookmarks(@product.name, product_url(@product) %> on your product show template or <%= display_bookmarks(@blog.title) %> to display social bookmarks on your blog.

CREDITS
--------

Development of this extension is by [White Star Media][1].

[1]: http://www.whitestarmedia.co.uk/
