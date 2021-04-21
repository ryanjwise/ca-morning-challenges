def simon_says(array)
  number = 0
  array.each do |command|
    next if simon_says?(command) == false

    task = command.split('Simon says ').pop.split(' ')
    number = evaluate_task(number, task[0], task.last.to_i)
  end
  number
end

def simon_says?(string)
  words = string.split(' ')
  return true if words[0] == 'Simon' && words[1] == 'says'

  false
end

def evaluate_task(number, operation, mod)
  case operation
  when 'add'
    number += mod
  when 'subtract'
    number -= mod
  when 'multiply'
    number *= mod
  end
  number
end
