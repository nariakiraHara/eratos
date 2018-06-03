class Prime
    def self.prime? num
        index = 2
        until index > num / 2
            if num % index == 0
                return false
            end
            index += 1
        end
        return true
    end
    def self.primes start=2, num=1000
        primes = []
        total = start
        until total > num
            if self.prime? total
                primes.push(total)
            end
            total += 1
        end
        return primes
    end
end