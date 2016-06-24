require "spec_helper"
require "flickr_etv/photo"

RSpec.describe FlickrEtv::Photo do
  let(:flickr_connector) { FlickrEtv::FlickrConnector.new }
  let(:keyword) { 'Magic' }
  let(:url) { flickr_connector.find_photo_by_keyword(keyword) }
  describe 'download and delete' do
    it 'should fail downloading a photo' do
      expect(FlickrEtv::Photo.download).to be_nil
    end

    it 'should download a photo' do
      expect(FlickrEtv::Photo.download(url)).to_not be_nil
    end

    it 'should fail deleting a photo' do
      expect(FlickrEtv::Photo.delete).to be_nil
    end

    it 'should delete a photo' do
      photo = FlickrEtv::Photo.download(url)
      expect(FlickrEtv::Photo.delete(photo)).to be true
    end
  end
end
