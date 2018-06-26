class TinySpec
  attr_accessor :symbols

  def initialize(&block)
    @symbols = []

    instance_eval(&block)
    print feedback
  end

  def context(description)
    4.times { print ' ' } if __callee__.to_s == 'it'
    puts "#{colorize(33, __callee__)} #{description}"

    yield
  end
  alias it context
  alias describe context

  def expect_equals(solution, specification)
    passed?(solution == specification)
  end

  private

  def passed?(boolean)
    symbols << (boolean ? '.' : '*')
  end

  def feedback
    display_dots
    display_message
  end

  def display_dots
    symbols.each do |symbol|
      color = (symbol == '.' ? 32 : 31)

      print colorize(color, symbol)
    end
  end

  def display_message
    failures = symbols.reject { |symbol| symbol == '.' }

    puts ''
    puts "#{symbols.count} tests, #{failures.count} failures"
  end

  def colorize(color, symbol)
    "\e[#{color}m#{symbol}\e[0m"
  end
end
