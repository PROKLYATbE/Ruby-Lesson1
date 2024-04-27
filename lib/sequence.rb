# Implement function that will search for longest sequence of same symbols, case ignored.
# Examples:
# 'aaab' => 3
# 'caAb' => 2
# '' => 0
# 'abc' => 1

# @param [String] s
def sequence(s)
  leng = 1
  max_leng = 0
  s.downcase.each_char.with_index do |char, index|
    if index < s.length - 1 && char == s[index + 1].downcase
      leng += 1
    else
      leng = 1
    end
    max_leng = [max_leng, leng].max
  end
  max_leng
end
