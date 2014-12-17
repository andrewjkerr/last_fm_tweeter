require 'last_fm_tweeter/clients'
require 'last_fm_tweeter/formatter'
require 'last_fm_tweeter/version'

module LastFmTweeter
  class Application
    def initialize
      @clients = LastFmTweeter::Clients.new
      @formatter = LastFmTweeter::Formatter.new
      @last_fm_username = ENV['LAST_FM_USERNAME']
    end

    def run
      song = @clients.get_recent_song(@last_fm_username)
      tweet = @formatter.format(song)
      album_art = song['image'][3]['content']
      tweet(tweet, album_art)
    end

    def tweet(tweet, album_art)
      if album_art
        @clients.send_tweet_with_album_art(tweet, album_art)
      else
        @clients.send_tweet(tweet)
      end
    end
  end
end
