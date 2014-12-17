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
      @clients.send_tweet(tweet)
    end
  end
end
