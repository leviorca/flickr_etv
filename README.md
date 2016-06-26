# FlickrEtv

FlickrEtv is a Ruby gem, it allows:

* Accepts a list of search keywords as arguments
* Queries the Flickr API for the top-rated image for each keyword
* Downloads the results
* Crops them rectangularly
* Assembles a collage grid from ten images and
* Writes the result to a user-supplied filename

## Dependencies

This gem depends on:

* Ruby v2.3.1
* [Flickraw](https://github.com/hanklords/flickraw)
* [ImageMagick](http://www.imagemagick.org/script/index.php)

> Before to bundle you have to install *ImageMagick*.
On OSX, you can install *ImageMagick* with brew:

    $ brew install imagemagick

## Gem setup

To use the Flickr API you need a Flickr API key.

If you don't have a Flickr API key you can get one from [here](https://www.flickr.com/services/api/misc.api_keys.html).

The gem reads the Flickr API key from the environment variables so you have a to define it:

```sh
$ export FLICKR_API_KEY="Your Flickr API key"
$ export FLICKR_SHARED_SECRET="Your Flickr shared secret"
```

Now we can install the needed gems:

    $ bundle install

## Testing the gem

The gem uses rspec so just type:

    $ rspec

## Building and Installing

The gem uses Rake tasks to build and install the gem:

    $ rake build
    $ rake install

Now wecan run FlickrEtv.

## Run

FlickrEtv offers a command line interface.

To check the arguments accepted run:

    $ flickr_etv -h

Example:

If we want to create a collage with the following keywords: "Winter, Summer, Brexit" we need to type:

    $ flickr_etv -f MyNewCollage.jpg -k "Winter,Summer,Brexit"

That command will fetch for each keyword the top-rated image and fetch 7 images based on random keywords from _/usr/share/dict/words_

The final collage will be saved to MyNewCollage.jpg
