def positive_dominant(array)
  pos_count = 0
  neg_count = 0
  nums = array.keep_if { |item| item.is_a? Numeric }
  unless array.empty?
    array.uniq.each do |item|
      item >= 0 ? pos_count += 1 : neg_count += 1
    end
  end
  puts "There are #{pos_count} positive, and #{neg_count} negatives"
  pos_count > neg_count
end
