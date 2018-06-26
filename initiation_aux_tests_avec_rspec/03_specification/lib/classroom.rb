module Schooly
  class Classroom
    attr_reader :title, :students

    def initialize(title, students)
      @title    = title
      @students = students
    end

    # Split students in two groups
    # sorted by alphabetical order
    #
    # @return [Array<Array>] with students groups
    def groups
      students.sort_by(&:fullname).each_slice((students.count/2.0).round).to_a
    end

    def count_students
      students.count
    end
  end
end
