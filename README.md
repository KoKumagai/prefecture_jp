# PrefectureJp

[![Gem Version](https://badge.fury.io/rb/prefecture_jp.svg)](https://badge.fury.io/rb/prefecture_jp)

A source for data about Japanese prefectures.  
Area and population are from [here](http://www.e-stat.go.jp/SG1/estat/GL08020103.do?_toGL08020103_&tclassID=000001068779&cycleCode=0&requestSender=search).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'prefecture_jp'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install prefecture_jp

## Usage

#### Japanese prefectures

List all prefectures.

```ruby
prefectures = PrefectureJp::Prefecture.all
```

Filter prefectures.

```ruby
hokkaido = PrefectureJp::Prefecture.hokkaido

tohoku = PrefectureJp::Prefecture.tohoku

kanto = PrefectureJp::Prefecture.kanto

chubu = PrefectureJp::Prefecture.chubu

kansai = PrefectureJp::Prefecture.kansai

chugoku = PrefectureJp::Prefecture.chugoku

shikoku = PrefectureJp::Prefecture.shikoku

kyushu = PrefectureJp::Prefecture.kyushu
```

Find a specific prefecture.

```ruby
tokyo = PrefectureJp::Prefecture.find_by_prefecture_code(13)

tokyo = PrefectureJp::Prefecture.find_by_prefecture_name("東京都")

tokyo = PrefectureJp::Prefecture.find_by_prefecture_name_en("Tokyo")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/KoKumagai/prefecture_jp/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
