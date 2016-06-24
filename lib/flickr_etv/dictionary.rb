module FlickrEtv
  class Dictionary

    def self.read
      File.readlines("/usr/share/dict/words").sample.strip
    rescue Exception => e
      puts "Error: #{e.message}"
    end

  end
end
