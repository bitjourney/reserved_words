# frozen_string_literal: true

require 'set'
require 'active_support/core_ext/array'
require 'reserved_words/version'

module ReservedWords
  DEFAULT_WORDS = %w[admin api image rss www cdn].freeze

  @reserved_words = SortedSet.new DEFAULT_WORDS.dup

  def self.list
    @reserved_words.to_a
  end

  def self.add(word)
    Array.wrap(word).each { |w| @reserved_words.add(w) }
  end

  def self.remove(word)
    @reserved_words.delete(word)
  end

  def self.clear!
    @reserved_words = SortedSet.new DEFAULT_WORDS.dup
  end
end
