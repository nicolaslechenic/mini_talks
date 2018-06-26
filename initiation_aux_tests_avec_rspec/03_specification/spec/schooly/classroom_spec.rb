require_relative '../spec_helper'

TinySpec.new do

  describe '#groups' do
    it 'return two arrays' do
      students = Array.new(28) { Schooly::Student.new('John', 'Doe') }
      groups = Schooly::Classroom.new('3em2', students).groups

      expect_equals(groups.count, 2)
    end

    context 'number of students is even' do
      it 'return two arrays with same number of students' do
        students = Array.new(28) { Schooly::Student.new('John', 'Doe') }
        groups = Schooly::Classroom.new('3em2', students).groups

        expect_equals(groups.first.count, groups.last.count)
      end
    end

    context 'number of students is odd' do
      it 'return two arrays with one more student in the first group' do
        students = Array.new(27) { Schooly::Student.new('John', 'Doe') }
        groups = Schooly::Classroom.new('3em2', students).groups

        expect_equals(groups.first.count, groups.last.count + 1)
      end
    end
  end
end
