require 'benchmark'
nums_a = [7, 9, 9, 2, 7, 3, 9, 8, 7, 1, 3]
n = 10000
Benchmark.bmbm do |bench|
bench.report('BJ') do
n.times do
    index = -1
    double = []
    sum = 0
    until nums_a[index].nil?
      if index.even?
        num_double = nums_a[index] * 2
        if num_double > 9 
          double << (num_double.to_s)[0].to_i + (num_double.to_s)[1].to_i
        else
          double << num_double
        end
      else
        double << nums_a[index]
      end
      index += -1
    end
    double.each { |x| sum += x }
    sum % 10 == 0 ?  true : false
end
end
end


