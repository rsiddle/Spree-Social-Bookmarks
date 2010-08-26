module Spree
  module SocialBookmarks
    # Singleton class to access the social bookmark configuration object (SocialBookmarksConfiguration.first by default) and it's preferences.
    #
    # Usage:
    #   Spree::SocialBookmarks::Config[:foo]                  # Returns the foo preference
    #   Spree::SocialBookmarks::Config[]                      # Returns a Hash with all the google base preferences
    #   Spree::SocialBookmarks::Config.instance               # Returns the configuration object (SocialBookmarksConfiguration.first)
    #   Spree::SocialBookmarks::Config.set(preferences_hash)  # Set the google base preferences as especified in +preference_hash+
    class Config
      include Singleton
      include PreferenceAccess

      class << self
        def instance
          return nil unless ActiveRecord::Base.connection.tables.include?('configurations')
          SocialBookmarksConfiguration.find_or_create_by_name("Default social bookmarks configuration")
        end
      end
    end
  end
end

