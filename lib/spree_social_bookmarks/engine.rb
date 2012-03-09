module Spree::SocialBookmarks; end

module SpreeSocialBookmarks
  class Engine < Rails::Engine    
    engine_name 'spree_social_bookmarks'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end
    Spree::SocialBookmarks
    initializer "spree.spree_social_bookmarks.preferences", :after => "spree.environment" do |app|
      Spree::SocialBookmarks::Config = Spree::SocialBookmarksConfiguration.new
    end
    
    def self.activate; end

    config.to_prepare &method(:activate).to_proc
  end
end
