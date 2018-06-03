class Eratos
  def self.all_prime_numbers(num)
    num.map!{|item| item.to_i}
    if num.length == 1 && num[0] >= 0
      #最大値を設定
      max = num[0]
      max_sqrt = Math.sqrt(max)
      ans = (0..max).to_a
      #0と1は素数ではないのでnilを設定
      ans[0] = ans[1] = nil

      #4から2ずつ足していった数値は素数ではないのでnilを設定
      4.step(max,2){|x|
        ans[x] = nil
      }
      x = 3
      # 奇数の倍数も合成数なのでnilを設定
      loop {
        if ans[x]
          (x * x).step(max,x){|i|
            ans[i] = nil
          }
        end

        x += 2
        if x > max_sqrt
          break
        end
      }
      ans.compact

    else
      "0以上の引数を1つ指定してください"
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  p Eratos.all_prime_numbers ARGV
end
