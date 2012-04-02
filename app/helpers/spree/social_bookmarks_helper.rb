module Spree
  module SocialBookmarksHelper
    # Dislay the social bookmarks
    # <%= display_bookmarks(@product.name, product_url(@product)) %> OR
    # <%= display_bookmarks(@product.name) %> which will use the current URI request
  
    def display_bookmarks(product_or_url = nil, title = nil)
      product = nil
      image = nil
      
      if product_or_url.nil?
        Rails.logger.info "HUH?"
        url = request.env["REQUEST_URI"]
        url = 'http://'+request.host + request.fullpath if url.nil? or url.eql?(url.gsub(/http:/,'').gsub(/HTTP:/,''))
      elsif product_or_url.class == String and url.eql?(url.gsub(/http:/,'').gsub(/HTTP:/,''))
        url = 'http://'+request.host + url
        Rails.logger.info "NOWAY"
      elsif product_or_url.class == Spree::Product
        url = polymorphic_url product_or_url

        product = product_or_url
        title = product_or_url.name if title.nil?
        image = request.protocol + request.host + product.images.first.attachment.url if product.images.count > 0
      end

      render :partial => 'spree/shared/bookmarks', :locals => {
        :title => title,
        :url => u(url),
        :product => product,
        :image => u(image)
      }
    end
  end
end