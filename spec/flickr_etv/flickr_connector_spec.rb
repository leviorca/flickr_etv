require "spec_helper"
require "flickr_etv/dictionary"

RSpec.describe FlickrEtv::FlickrConnector do
  let(:flickr_connector) { FlickrEtv::FlickrConnector.new }
  let(:keyword) { 'Brexit' }
  let(:wrong_photo_id) { '111' }

  describe 'initialize' do
    it 'should initialize the connector' do
      expect(flickr_connector).to_not be_nil
    end
  end

  describe 'find_photo_by_keyword' do
    it 'should find a photo given a keyword' do
      expect(flickr_connector.find_photo_by_keyword).to be_nil
      expect(flickr_connector.find_photo_by_keyword(keyword)).to_not be_nil
    end
  end

end
