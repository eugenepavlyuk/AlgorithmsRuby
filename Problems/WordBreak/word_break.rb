# Given an input string and a dictionary of words, find out if the input string can be segmented 
# into a space-separated sequence of dictionary words. See following examples for more details.

# Consider the following dictionary 
# { i, like, sam, sung, samsung, mobile, ice, cream, icecream, man, go, mango}

# Input:  ilike
# Output: Yes 
# The string can be segmented as "i like".

# Input:  ilikesamsung
# Output: Yes
# The string can be segmented as "i like samsung" 
# or "i like sam sung".

class WordBreak

  # This solution is improved a bit, it returns all valid sentences
  # Complexity is exponential O(n^n)
  def self.breakSentenceRecursively(string, dictionary)

    words = []
    sentences = []
    breakSubsentence(string, dictionary, words, sentences)

    return sentences

  end

  # Core method to do backtracking (recursion)
  def self.breakSubsentence(string, dictionary, words_array, sentences)

    if string.empty?
      sentence = words_array.join(' ')
      sentences << sentence
      return 
    end

    index = 0

    while index < string.length

      substring = string[0..index]

      if dictionary.include?(substring)
        words = words_array.clone
        words << substring

        rest_string = ''

        if index + 1 < string.length 
          rest_string = string[index + 1..string.length - 1]
        end

        breakSubsentence(rest_string, dictionary, words, sentences)

      end

      index += 1

    end

  end

  private_class_method :breakSubsentence

end