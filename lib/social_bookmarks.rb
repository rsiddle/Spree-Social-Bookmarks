module SocialBookmarks

  def display_bookmarks(title = "", url = nil)
    if (url == nil)
      url = request.env["REQUEST_URI"]
      url = 'http://'+request.env["HTTP_HOST"]+request.env["REQUEST_URI"] if url.eql?(url.gsub(/http:/,'').gsub(/HTTP:/,''))
    elsif url.eql?(url.gsub(/http:/,'').gsub(/HTTP:/,''))
      url = 'http://'+request.env["HTTP_HOST"]+url
    end
	
    render :partial => 'shared/bookmarks', :locals => { :title => title, :url => url }
  end

end

