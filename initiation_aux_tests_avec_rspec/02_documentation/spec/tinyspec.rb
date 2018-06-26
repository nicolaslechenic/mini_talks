module TinySpec
  refine Object do
    def expect_equals(result, specification)
      is_passed = (result == specification)
      symbol = is_passed ? '.' : '*'

      feedback(symbol)
    end

    def it(description)
      puts description
      yield
    end

    private

    def feedback(symbol)
      color = (symbol == '.' ? 32 : 31)

      puts "\e[#{color}m#{symbol}\e[0m"
    end
  end
end
