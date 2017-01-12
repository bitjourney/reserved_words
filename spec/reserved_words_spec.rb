require 'spec_helper'

RSpec.describe ReservedWords do
  let(:default_words) { %w(admin api image rss www cdn) }

  before { ReservedWords.clear! }

  describe '.list' do
    it 'returns initial reserved words' do
      expect(ReservedWords.list).to eq default_words.sort!
    end

    it 'should not return duplicate reserved words' do
      initial_count = ReservedWords.list.count
      ReservedWords.add(ReservedWords.list.first)
      expect(ReservedWords.list.count).to eq initial_count
    end
  end

  describe '.add' do
    context 'when a word is passed' do
      it 'adds the word to reserved words' do
        ReservedWords.add('blog')
        expect(ReservedWords.list).to eq default_words.push('blog').sort!
      end
    end

    context 'when words are passed' do
      it 'adds the words to reserved words' do
        ReservedWords.add(%w(blog public))
        expect(ReservedWords.list).to eq default_words.push('blog', 'public').sort!
      end
    end
  end

  describe '.remove' do
    let(:reserved_words) do
      default_words.delete('rss')
      default_words.sort!
    end

    it 'removes the word from reserved words' do
      ReservedWords.remove('rss')
      expect(ReservedWords.list).to eq reserved_words
    end
  end
end
