# LastFmTweeter

Tweets your last scrobbled song on Last.FM.

## Installation

Since there is currently no `gem install` available, follow the following instructions:

Clone the repository:
```bash
git clone https://github.com/andrewjkerr/last_fm_tweeter
```

Set the executable bit on the bin executable:
```bash
chmod +x /path/to/application/bin/tweetsong
```

Add to your path:
```bash
export PATH=/path/to/application/bin:$PATH
```

Export environment variables required:
```bash
export TWITTER_CONSUMER_KEY=YOUR-TWITTER-CONSUMER-KEY
export TWITTER_CONSUMER_SECRET=YOUR-TWITTER-CONSUMER-SECRET
export TWITTER_ACCESS_TOKEN=YOUR-TWITTER-ACCESS-TOKEN
export TWITTER_ACCESS_TOKEN_SECRET=YOUR-TWITTER-ACCESS-TOKEN-SECRET
export LAST_FM_API_KEY=YOUR-LAST.FM-API-KEY
export LAST_FM_API_SECRET=YOUR-LAST.FM-API-SECRET
export LAST_FM_USERNAME=YOUR-LAST.FM-USERNAME
```

(Please note that your Twitter keys and access tokens must have read/write permissions!)

Once the above is done, `tweetsong` will execute the application!

## Usage

```bash
tweetsong
```

## Contributing

1. Fork it ( https://github.com/andrewjkerr/last_fm_tweeter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Thanks

Thanks to @connorjacobsen for his README over on the tweet_scheduler repository ([https://github.com/connorjacobsen/tweet_scheduler](https://github.com/connorjacobsen/tweet_scheduler)) for helping me get this frickin' thing running.