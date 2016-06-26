require 'rmagick'

module FlickrEtv
  class CollageMaker
    include Magick

    def self.build(opts = {})
      return if (opts[:photos].nil? or opts[:photos].empty?)

      properties = {
        width:  1920,
        height: 1080,
        output: "collage.jpg"
      }.merge(opts)

      list = photo_list(properties[:photos])

      montage = list.montage
      collage = montage.flatten_images
      collage.resize!(properties[:width], properties[:height])
      collage.write(properties[:output])

      collage
    end

    def self.photo_list(photos_paht)
      list = ImageList.new

      photos_paht.each do |photo_paht|
        photo = Image.read(photo_paht).first

        # crops the photo rectangularly
        photo = photo.resize_to_fill(480, 270)

        list.push(photo)
      end

      list
    end

  end
end