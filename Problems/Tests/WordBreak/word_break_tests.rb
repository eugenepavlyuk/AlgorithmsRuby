require 'minitest/autorun'

require_relative '../../WordBreak/word_break.rb'

# rubocop:disable Naming/MethodName

class WordBreakTests < Minitest::Test

  def test_breakSentenceRecursively

    sentence = 'Ilikebutterror'
    dictionary = %w[I like butt error butter terror but].to_set
    sentences = WordBreak.breakSentenceRecursively(sentence, dictionary).sort!
    expected_sentences = ['I like butt error', 'I like but terror'].sort!

    assert_equal(expected_sentences, sentences, 'String is split incorrectly')

  end

end

# rubocop:enable Naming/MethodName