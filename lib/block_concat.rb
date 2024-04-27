# Implement function in block_concat.rb that will merge strings by following rules:
# Inputs: 2 strings and block size. Blocks should be added from strings by turns.
# If one of the string is empty just copy the rest of the another string.
# Last block can be smaller.

# @param [String] a
# @param [String] b
# @param [Integer] n
def block_concat(_a, _b, _n)
  result = ''
  ind = 0
  while ind < _a.length || ind < _b.length
    result << _a[ind, _n] if ind < _a.length
    result << _b[ind, _n] if ind < _b.length
    
    ind += _n
  end
  result
end
