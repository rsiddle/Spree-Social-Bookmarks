module Spree
  class SocialBookmarksConfiguration < Preferences::Configuration
    # possible removal? Never heard of most of these services
    
    preference :ask, 			:boolean, :default => false
    preference :blinklist, 	:boolean, :default => false
    preference :blogmarks, 	:boolean, :default => false
    preference :delicious, 	:boolean, :default => false
    preference :digg, 		:boolean, :default => false
    preference :dzone, 		:boolean, :default => false
    preference :facebook, 	:boolean, :default => true
    preference :fark, 		:boolean, :default => false
    preference :furl, 		:boolean, :default => false
    preference :google, 		:boolean, :default => false
    preference :magnolio, 	:boolean, :default => false
    preference :netscape, 	:boolean, :default => false
    preference :newsvine, 	:boolean, :default => false
    preference :reddit, 		:boolean, :default => false
    preference :shoutwire, 	:boolean, :default => false
    preference :simpy, 		:boolean, :default => false
    preference :slashdot, 	:boolean, :default => false
    preference :spurl, 		:boolean, :default => false
    preference :squidoo, 		:boolean, :default => false
    preference :stumbleupon, 	:boolean, :default => false
    preference :swik, 		:boolean, :default => false
    preference :technorati, 	:boolean, :default => false
    preference :windowslive, 	:boolean, :default => false
    preference :myweb2, 		:boolean, :default => false
    preference :wists,      :boolean, :default => false
    preference :magnolia,    :boolean, :default => false
    preference :twitter,    :boolean, :default => true
    preference :email,      :boolean, :default => true
    preference :image_path, :string, :default => "/assets/store/social/"
  end
end
