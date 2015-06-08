# ReservedWords [![Build Status](https://circleci.com/gh/bitjourney/reserved_words.png?style=shield&circle-token=6aea11a27836a75133fa0223160879f413efdc2a)](http://travis-ci.org/bitjourney/reserved_words)

Reserve words for your system

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'reserved_words'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install reserved_words

## Usage

List default words

```ruby
[1] pry(main)> ReservedWords.list
=> ["admin", "api", "image", "rss", "www"]
```

Add your own word

```ruby
[1] pry(main)> ReservedWords.add('blog')
=> ["admin", "api", "blog", "image", "rss", "www"]

[1] pry(main)> ReservedWords.add(['blog', 'public'])
=> ["admin", "api", "blog", "image", "public", "rss", "www"]
```

Remove word

```ruby
[1] pry(main)> ReservedWords.remove('rss')
=> ["admin", "api", "image", "www"]
```

Restore default words

```ruby
[1] pry(main)> ReservedWords.clear!
=> ["admin", "api", "image", "rss", "www"]
```

If you are using Rails, `config/initializers/reserved_words.rb` is a good place to create your own reserved words

## Contributing

1. Fork it ( https://github.com/[my-github-username]/reserved_words/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
