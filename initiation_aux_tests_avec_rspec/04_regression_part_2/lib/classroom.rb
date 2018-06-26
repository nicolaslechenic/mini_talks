module Schooly
  class Classroom
    def initialize(title, students)
      @title    = title
      @students = students
    end

    # Split students in two groups
    # sorted by alphabetical order
    #
    # @return [Array<Array>] with students groups
    def groups
      @students.sort_by(&:fullname).each_slice((@students.count/2.0).round).to_a
    end
  end
end
