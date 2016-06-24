require "spec_helper"
require "flickr_etv/dictionary"

RSpec.describe FlickrEtv::Dictionary do
  describe 'read' do
    it 'should read a random keyword' do
      expect(FlickrEtv::Dictionary.read).to_not be_nil
      expect(FlickrEtv::Dictionary.read).to_not be_empty
      expect(FlickrEtv::Dictionary.read).to be_instance_of(String)
    end
  end
end
