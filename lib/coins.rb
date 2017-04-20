class Fixnum
  define_method(:coins) do
    limit = self
    coin_values = {
      25 => [' quarter', ' quarters'],
      10 => [' dime', ' dimes'],
      5 => [' nickel', ' nickels'],
      1 => [' penny', ' pennies'],
    }
    answer = []
    coin_values.each() do |key, value|
      count = 0
      until limit<=key-1
        count += 1
        limit -= key
      end
      if count==1
        answer.push(count.to_s().+value[0])
      elsif count > 1
        answer.push(count.to_s().+value[1])
      end
    end
    answer.join(" ")
  end
end
