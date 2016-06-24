require 'spec_helper'
require 'flickr_etv'

describe FlickrEtv do
  let(:keywords) { ['Winter', 'Summer', 'Brexit'] }
  let(:filename) { 'filename.jpg' }
  let(:app) { FlickrEtv::App.new }

  it "true" do
    expect(app.start(filename, keywords)).to be true
  end
end
