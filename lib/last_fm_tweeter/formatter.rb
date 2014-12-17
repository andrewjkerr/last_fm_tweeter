module LastFmTweeter
  class Formatter
    def initialize
    end

    # Formats song information to send tweet
    def format(song)
      artist_name = format_artist_name(song["artist"]["content"])
      song_name = format_song_name(song["name"])
      hashtag = format_hashtag(song["nowplaying"])
      return "#{song_name} - #{artist_name} ##{hashtag}"
    end

    # Formats artist name for tweet
    def format_artist_name(artist_name)
      if(artist_name.length > 52)
        return artist_name[0 .. 48] + "..."
      else
        return artist_name
      end
    end

    # Formats song name for tweet
    def format_song_name(song_name)
      if(song_name.length > 48)
        return "\"" + song_name[0 .. 44] + "...\""
      else
        return "\"" + song_name + "\""
      end
    end

    # Determines hashtag for tweet
    def format_hashtag(nowplaying)
      if nowplaying
        return "nowplaying"
      else
        return "tweetsong"
      end
    end
  end
end