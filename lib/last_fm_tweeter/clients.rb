require 'twitter'
require 'lastfm'

module LastFmTweeter
  class Clients

    # Initialize the Twitter and Last.FM clients
    def initialize
      @twitter_client = Twitter::REST::Client.new do |config|
        config.consumer_key         = ENV['TWITTER_CONSUMER_KEY']
        config.consumer_secret      = ENV['TWITTER_CONSUMER_SECRET']
        config.access_token         = ENV['TWITTER_ACCESS_TOKEN']
        config.access_token_secret  = ENV['TWITTER_ACCESS_TOKEN_SECRET']
      end
      @last_fm_client = Lastfm.new(ENV['LAST_FM_API_KEY'], ENV['LAST_FM_API_SECRET'])
    end

    # Get the most recent scrobbled song
    def get_recent_song(username)
      @last_fm_client.user.get_recent_tracks(user: username)[0]
    end

    def send_tweet(text)
      @twitter_client.update(text)
    end
  end
end
