require 'benchmark'

this_time = Benchmark.bm do |x|
  ((1..27).to_a + [67]).each do |problem|
    x.report("#{problem}:") { `ruby -I. #{problem}.rb` }
  end
end
performance = this_time.inject({}) { |h, o| h[o.label.to_i] = o.real; h }

prev_time = eval File.read("performance.rb")

IO.write("performance.rb", performance.to_s.gsub(/,/, ",\n"))

comparisons = performance.keys.map do |k|
  previous_run = (prev_time[k] || 0)
  delta = (previous_run - performance[k])
  delta = (100 * delta / previous_run).round(2)
  case delta
    when -10..10
      "#{k}: not much change (#{delta}%)"
    when (-1.0/0.0)..-10
      "#{k}: got slower by #{delta}%"
    when 10..(1.0/0.0)
      "#{k}: got faster by #{delta}%"
    else
      "#{k} doesn't seem to have a score"
  end
end

puts comparisons
