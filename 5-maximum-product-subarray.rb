def brute_force(array)
  max_product = -2_147_483_648

  array.each_index do |i|
    product = 1
    (i...array.length).each do |j|
      product = array[j] * product
      next unless product > max_product

      max_product = product
    end
  end

  max_product
end

def optimal(array)
  max_product = -2_147_483_648

  left_product = 1
  right_product = 1
  size = array.length

  array.each_with_index do |item, index|
    left_product = 1 if left_product.zero?
    right_product = 1 if right_product.zero?

    left_product *= item
    right_product *= array[size - index - 1]
    max_product = [max_product, [left_product, right_product].max].max
  end
  max_product
end


p optimal [2,3,-2,4]

