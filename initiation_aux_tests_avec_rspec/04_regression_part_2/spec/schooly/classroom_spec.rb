RSpec.describe Schooly::Classroom do

  let(:students) do
    [
      { firstname: 'John', lastname: 'Doe' },
      { firstname: 'Janette', lastname: 'Doe' },
      { firstname: 'Chuck', lastname: 'Norris' },
      { firstname: 'John', lastname: 'Kennedy' },
      { firstname: 'Yukihiro', lastname: 'Matsumoto' },
      { firstname: 'Sandi', lastname: 'Metz' }
    ].map do |student_hash|
      Schooly::Student.new(student_hash)
    end
  end

  describe '#groups' do
    it 'return two arrays' do
      students = Array.new(28) { Schooly::Student.new(firstname: 'John', lastname: 'Doe') }
      groups = described_class.new('3em2', students).groups

      expect(groups.count).to eql(2)
    end

    it 'return sorted array of students' do
      groups = described_class.new('3em2', students).groups
      fullname_order =
        groups.flatten.map do |student|
          [student.lastname, student.firstname].join(' ')
        end

      expect(fullname_order).to eql(fullname_order.sort)
    end

    context 'number of students is even' do
      it 'return two arrays with same number of students' do
        students = Array.new(28) { Schooly::Student.new(firstname: 'John', lastname: 'Doe') }
        groups = described_class.new('3em2', students).groups

        expect(groups.first.count).to eql(groups.last.count)
      end
    end

    context 'number of students is odd' do
      it 'return two arrays with one more student in the first group' do
        students = Array.new(27) { Schooly::Student.new(firstname: 'John', lastname: 'Doe') }
        groups = described_class.new('3em2', students).groups

        expect(groups.first.count).to eql(groups.last.count + 1)
      end
    end
  end
end
