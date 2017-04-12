class Hamming

  def self.compute(first, second)
    raise ArgumentError unless first.length == second.length
    diff = 0
    first.length.times do |i|
      diff += 1 unless first[i] == second[i]
    end
    diff
  end
end
