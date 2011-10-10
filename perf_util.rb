def perf_time msg
  start = Time.now
  yield
  final = Time.now
  puts "#{final - start}seconds: #{msg}"
end
