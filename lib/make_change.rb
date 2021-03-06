class String
  define_method(:make_change) do |pennies,nickles,dimes,quarters|
    input_number = self.to_i
    available_change = [pennies.to_i,nickles.to_i,dimes.to_i,quarters.to_i, true]
    change_array = [0,0,0,0]
    final_array = []
    until input_number < 25 || available_change[3] == 0
      if available_change[3] > 0
        change_array[3] += 1
        input_number -= 25
        available_change[3] -= 1
      end
    end
    until input_number < 10 || available_change[2] == 0
      if available_change[2] > 0
        change_array[2] += 1
        input_number -= 10
        available_change[2] -= 1
      end
    end
    until input_number < 5 || available_change[1] == 0
      if available_change[1] > 0
        change_array[1] += 1
        input_number -= 5
        available_change[1] -= 1
      end
    end
    until input_number < 1 || available_change[0] == 0
      if available_change[0] > 0
        change_array[0] += 1
        input_number -= 1
        available_change[0] -= 1
      end
    end
    if input_number > 0
      available_change[4] = false
    end
    final_array.push(change_array.map {|a| a.to_s}).push(available_change.map {|a| a.to_s})
    final_array
  end
end
