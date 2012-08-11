require 'benchmark'

this_time = Benchmark.bm do |x|
  ((1..29).to_a + [67]).each do |problem|
    x.report("#{problem}:") { `ruby -I. #{problem}.rb` }
  end
end
performance = this_time.inject({}) { |h, o| h[o.label.to_i] = o.real; h }

prev_time = eval File.read("performance.rb")

IO.write("performance.rb", performance.to_s.gsub(/,/, ",\n"))

comparisons = performance.keys.map do |k|
  #TODO use percentage change
  delta = ((prev_time[k] || 0) - performance[k]).round(2)
  case delta
    when -0.1..0.1
      "#{k}: not much change (#{delta})"
    when (-1.0/0.0)..-0.1
      "#{k}: got slower by #{delta}"
    when 0.1..(1.0/0.0)
      "#{k}: got faster by #{delta}"
    else
      "#{k} doesn't seem to have a score"
  end
end

puts comparisons
