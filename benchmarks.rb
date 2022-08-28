require 'benchmark'

this_time = Benchmark.bm do |x|
  ((1..31).to_a + [67]).each do |problem|
    x.report("#{problem}:") { `ruby -I. #{problem}.rb` }
  end
end
performance = this_time.inject({}) { |h, o| h[o.label.to_i] = o.real; h }

prev_time = eval File.read("performance.rb")

IO.write("performance.rb", performance.to_s.gsub(/,/, ",\n"))

def percent_change(prev, current)
  100 * ((current - prev)/prev.abs)
end

comparisons = performance.keys.map do |k|

  prev = prev_time[k] || 0
  current = performance[k]
  percent_delta = percent_change((prev) , current).round(1)
  time_delta = (current - prev).round(3)

  change_str = "#{percent_delta}% (#{time_delta} seconds) was: #{prev.round(3)}, now: #{current.round(3)}"

  case percent_delta
    when -10..10
      "#{k}: not much change (#{change_str})"
    when (-1.0/0.0)..-10
      "#{k}: got faster by #{change_str}"
    when 10..(1.0/0.0)
      "#{k}: got slower by #{change_str}"
    else
      "#{k} doesn't seem to have a score"
  end
end

puts comparisons
