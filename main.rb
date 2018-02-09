require 'colorize'

def puts_git(cmd)
  puts `git #{cmd} -h`
end

def menu
  puts '1: Enter git command'
  puts '2: Exit'
  choice = gets.to_i
  case choice
    when 1
      puts 'Enter git command'
      puts_git(gets.strip)
      menu
    when 2
      exit
    else
      puts 'Invalid choice'
      menu
  end
end

menu




# require 'colorize'
#
# def puts_git(cmd)
#   puts 'git #{cmd} -h'
# end
#
# def menu
#   puts 'MAIN MENU'.colorize(:cyan)
#   puts '1: Enter git command'.colorize(:cyan)
#   puts '2: Exit'.colorize(:cyan)
#   choice = gets.to_i
#   case choice
#     when 1
#       puts 'Enter git command'.colorize(:purple)
#       puts_git(gets.strip)
#       menu
#     when 2
#       exit
#     else
#       puts "Invalid choice".colorize(:red)
#       menu
#   end
# end
#
# menu
