puts 'doing &'
puts 'small'
puts Benchmark.measure { [1, 2, 3] & [1, 2, 3, 4, 5] & [2, 3, 4, 5] & [2] }
puts 'big'
puts Benchmark.measure { (@cls[1, 2, 3, 4] * 64) & (@cls[1, 2, 3] * 64) & (@cls[1, 2] * 64) }
puts 'doing intersection'
puts 'small'
puts Benchmark.measure { [1, 2, 3].intersection([1, 2, 3, 4, 5], [2, 3, 4, 5], [2]) }
puts 'big'
puts Benchmark.measure { (@cls[1, 2, 3, 4] * 64).intersection(@cls[1, 2, 3] * 64, @cls[1, 2] * 64) }
