module LastFmTweeter
  class Formatter
    def initialize
    end

    # Formats song information to send tweet
    def format(song)
      artist_name = format_artist_name(song["artist"]["content"])
      song_name = format_song_name(song["name"])
      return song_name + " - " + artist_name + " #nowplaying"
    end

    # Formats artist name for tweet
    def format_artist_name(artist_name)
      if(artist_name.length > 63)
        return artist_name[0 .. 59] + "..."
      else
        return artist_name
      end
    end

    # Formats song name for tweet
    def format_song_name(song_name)
      if(song_name.length > 60)
        return "\"" + song_name[0 .. 56] + "...\""
      else
        return "\"" + song_name + "\""
      end
    end
  end
end