#! /usr/bin/env ruby

class Parentheses
  def initialize
    @paren_solutions = {
      1 => [ '()' ]
    }
  end

  def render(num_parens)
    print parens(num_parens).join("\n")
  end

  def parens(num_parens)
    if @paren_solutions[num_parens]
      @paren_solutions[num_parens]
    else
      find_parens(num_parens)
    end
  end

  private

  def find_parens(num_parens)
    @solution_array = []
    find_parens_recurse(num_parens)
    @paren_solutions[num_parens] = @solution_array
  end

  # solution provided by jordan on the site
  # I like it as a clean solution with
  # easy to understand recursion
  def find_parens_recurse(to_open, to_close = 0, state = '')
    if to_open == 0 && to_close == 0
      @solution_array << state
    end

    if to_open > 0
      find_parens_recurse(to_open - 1, to_close + 1, state + '(')
    end

    if to_close > 0
      find_parens_recurse(to_open, to_close - 1, state + ')')
    end
  end
end

# could split this into separate CLI wrapper in new file
def interactive_mode
  parens = Parentheses.new
  puts parens.render(get_input) while true
end

def get_input
  print "Enter num matching parens (q to quit): "
  num_parens = gets().chomp
  quit if ['q', 'Q', 'quit'].include? num_parens
  num_parens.to_i
end

def quit
  puts 'Goodbye!'
  exit
end

def single_run
  puts Parentheses.new.render(ARGV[0].to_i)
end

if __FILE__ == $0
  if ARGV.empty?
    interactive_mode
  else
    single_run
  end
end
