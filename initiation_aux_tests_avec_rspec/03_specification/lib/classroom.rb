module Schooly
  class Classroom
    def initialize(title, students)
      @title    = title
      @students = students
    end

    # Split students in two groups
    #
    # @return [Array<Array>] with students groups
    def groups
      @students.each_slice((@students.count / 2.0).round).to_a
    end
  end
end
