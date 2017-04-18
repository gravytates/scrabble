class String
  define_method(:scrabble) do
    value_one = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    scrabble_scores = Hash.new()
    scrabble_scores = {value_one => 1}
    letters = self.downcase().split("")

    total_score = 0
    letters.each() do |letter|
      if value_one.include?(letter)
        total_score += scrabble_scores.fetch(value_one)
      end
    end
      total_score
  end
end
