def bubble_sort(values)
  # Keep passing through the entire array until no swaps occur.
  loop do
    swap_occurred = false # No swaps yet for this pass through.

    # Start at the first entry, but end before the last entry.
    (0..values.length - 2).each do |i|
      # If out of order, do a swap.
      if values[i] > values[i + 1]
        temp = values[i]
        values[i] = values[i + 1]
        values[i + 1] = temp

        swap_occurred = true # Turn on the swapped flag.
      end
    end

    break unless swap_occurred # Mmm so readable!
  end

  values
end

p bubble_sort([4, 3, 78, 2, 0, 2])
