require "flickr_etv/version"
require "flickr_etv/dictionary"
require "flickr_etv/flickr_connector"
require "flickr_etv/photo"

module FlickrEtv
  class App
    def start(filename, keywords)
      flickr_connector = FlickrEtv::FlickrConnector.new

      photo_urls = keywords.take(10).map do |keyword|
        flickr_connector.find_photo_by_keyword(keyword)
      end.compact

      while photo_urls.length != 10
        keyword = FlickrEtv::Dictionary.read
        photo_url = flickr_connector.find_photo_by_keyword(keyword)
        photo_urls.push(photo_url) if photo_url
      end

      photos = photo_urls.map{|url| FlickrEtv::Photo.download(url)}

      true
    end
  end
end
