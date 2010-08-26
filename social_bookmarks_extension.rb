# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class SocialBookmarksExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/social_bookmarks"

  # Please use social_bookmarks/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate

    # helper avaliable in all views
     Spree::BaseController.class_eval do
       helper SocialBookmarks
     end
	
  end
end
