require "spec_helper"
require "flickr_etv/collage_maker"

RSpec.describe FlickrEtv::CollageMaker do

  let(:photos) {
    [
      "spec/flickr_etv/fixtures/photo1.jpg",
      "spec/flickr_etv/fixtures/photo2.jpg",
      "spec/flickr_etv/fixtures/photo3.jpg",
      "spec/flickr_etv/fixtures/photo4.jpg",
      "spec/flickr_etv/fixtures/photo5.jpg",
      "spec/flickr_etv/fixtures/photo6.jpg",
      "spec/flickr_etv/fixtures/photo7.jpg",
      "spec/flickr_etv/fixtures/photo8.jpg",
      "spec/flickr_etv/fixtures/photo9.jpg",
      "spec/flickr_etv/fixtures/photo10.jpg"
    ]
  }
  let(:opts) {
    {
      output: "MyCollage.jpg",
      photos: photos
    }
  }

  describe 'build' do
    let(:collage) { FlickrEtv::CollageMaker.build(opts) }

    it 'should build a collage' do
      expect(collage).to_not be_nil
      expect(collage).to be_a(Magick::Image)
    end

    it 'should fail building a collage' do
      collage = FlickrEtv::CollageMaker.build()
      expect(collage).to be_nil
    end
  end

  describe 'photo_list' do
    let(:photo_list) { FlickrEtv::CollageMaker.photo_list(photos) }

    it 'should have the same amount of photos' do
      expect(photo_list.length).to eq(photos.length)
    end
  end

end