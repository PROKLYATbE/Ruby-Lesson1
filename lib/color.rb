# Implement function that will convert colors in file color.rb. Input format is (0-255, 0-255, 0-255), output is hexadecimal.
# Check for edge cases!
# If values are outside the range, crop them:
#  (0,0,0) => 000000
#  (255,255,255) => FFFFFF
#  (-2, 0, 280) => 0000FF.

# @param [Integer] r
# @param [Integer] g
# @param [Integer] b
def color(r, g, b)
  # 100.to_s(16) => 64
  r = [[r, 0].max, 255].min
  g = [[g, 0].max, 255].min
  b = [[b, 0].max, 255].min

  r = r.to_s(16)
  g = g.to_s(16)
  b = b.to_s(16)

  r = "0#{r}" if r.length == 1
  g = "0#{g}" if g.length == 1
  b = "0#{b}" if b.length == 1

  (r + g + b).upcase
end
