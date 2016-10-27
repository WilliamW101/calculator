puts '-----Welcome to Calculator-----'

def should_quit?(thing)
  exit if thing == 'quit'
end

def get_first_number
  puts 'Input first number or type Quit to Exit'
  num1 = gets.strip.downcase
  should_quit?(num1)
  num1 = num1.to_f
  puts "first number is: #{num1}"
  num1
end

def get_second_number
  puts 'Input next number'
  num2 = gets.strip.downcase
  should_quit?(num2)
  num2 = num2.to_f
  puts "next number is: #{num2}"
  num2
end

def get_modifier
  puts 'What is your modifier? + - * / or clear'
  mod = gets.strip.downcase
  should_quit?(mod)
  case mod
  when '+'
    '+'
  when '-'
    '-'
  when '*'
    '*'
  when '/'
    '/'
  when 'clear'
     return 'end'
  else
    puts 'Please input valid modifier.'
    get_modifier
  end

end

def calculate(a, b, c)

  case b
  when "+"
    puts "#{a} + #{c} = #{a + c}"
    a + c
  when "-"
    puts "#{a} - #{c} = #{a - c}"
    a - c
  when "*"
    puts "#{a} * #{c} = #{a * c}"
    a * c
  when "/"
    puts "#{a} / #{c} = #{a / c}"
    a / c
  else
    puts ' '
  end

end



while true

  first = get_first_number
  loops = true
  while loops == true
    modifier = get_modifier

    if modifier == "end"
      loops = false
    else

      second = get_second_number
      first = calculate(first, modifier, second)
    end
  end
end



# -----bonus-----
# allow PEMDAS(order of operations)
#    hint use REGEX to complete this
# make it work with floats
# calculator history
# memory function
# sin, cos, tan
# user types quit to exit program
