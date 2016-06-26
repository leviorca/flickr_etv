require 'open-uri'
require 'securerandom'

module FlickrEtv
  class Photo

    def self.download(url = nil)
      return if (url.nil? or url.empty?)

      t_file = "/tmp/#{SecureRandom.uuid}.jpg"

      File.open(t_file, 'wb') do |file|
        file.write open(url).read
      end

      t_file
    rescue Exception => e
      puts "Error: #{e.message}"
      return
    end

    def self.delete(file = nil)
      return if (file.nil? or file.empty?)
      return unless File.exist?(file)
      File.delete(file)
      true
    end

  end
end