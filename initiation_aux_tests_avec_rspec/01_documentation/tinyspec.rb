# Super tiny testing framework
class TinySpec
  class << self
    def expect_equals(solution, specification)
      print (solution == specification ? 'OK | ' : 'KO | ')
    end
  end
end
