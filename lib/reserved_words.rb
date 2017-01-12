require 'active_support/core_ext/array'
require 'reserved_words/version'

module ReservedWords
  DEFAULT_WORDS = %w(admin api image rss www cdn)

  @reserved_words = DEFAULT_WORDS.dup

  def self.list
    @reserved_words.uniq
  end

  def self.add(word)
    @reserved_words.concat(Array.wrap(word)).sort!
  end

  def self.remove(word)
    @reserved_words.tap { |reserved_words| reserved_words.delete(word) }.sort!
  end

  def self.clear!
    @reserved_words = DEFAULT_WORDS.dup
  end
end
