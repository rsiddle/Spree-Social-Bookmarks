module SocialBookmarksHelper
  
  # Dislay the social bookmarks
  # <%= display_bookmarks(@product.name, product_url(@product)) %> OR
  # <%= display_bookmarks(@product.name) %> which will use the current URI request
  
  def display_bookmarks(title = "", url = nil)
    @controller.display_bookmarks(title, url)
  end

end