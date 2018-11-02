# frozen_string_literal: true

require 'minitest/autorun'

require_relative '../../UniqueMorseCodeWords/unique_morse_code_words.rb'

# rubocop:disable Naming/MethodName

class UniqueMorseCodeWordsTests < Minitest::Test

  def test_uniqueMorseCodeWordsOnly2

    words = %w[gin zen gig msg]

    result = UniqueMorseCodeWords.uniqueMorseCodeWords(words)

    puts result.class

    # assert(result, true)

  end

end

# rubocop:enable Naming/MethodName