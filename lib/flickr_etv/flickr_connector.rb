require 'flickraw'

module FlickrEtv
  class FlickrConnector

    def initialize
      FlickRaw.api_key = "f58624c16f2bbf56fe744bba529c94d4"
      FlickRaw.shared_secret = ""
      @flickr_connector = FlickRaw::Flickr.new
    end

    def find_photo_by_keyword(keyword = nil)
      return if (keyword.nil? or keyword.empty?)

      search_options = {text: keyword, sort: 'interestingness-desc', per_page: 1, page: 1, content_type: 1, media: :photos}
      photo = @flickr_connector.photos.search(search_options).first
      return unless photo

      photo_info = @flickr_connector.photos.getInfo(photo_id: photo.id, secret: photo.secret)

      FlickRaw.url_c(photo_info)
    rescue Exception => e
      puts "Error: #{e.message}"
      return
    end

  end
end
