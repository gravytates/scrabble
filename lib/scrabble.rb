class String
  define_method(:scrabble) do
    value_one = ["a"]
    scrabble_scores = Hash.new()
    scrabble_scores = {value_one => 1}
    letters = self.split("")

    total_score = 0
    letters.each() do |letter|
      if value_one.include?(letter)
        total_score += scrabble_scores.fetch(value_one)
      end
    end
      total_score
  end
end
