RSpec.describe Schooly::Student do
  [{
    firstname: 'John',
    lastname: 'Doe',
    id: 'ae6e4d1209f17b460503904fad297b31e9cf6362'
  }].each do |student_hash|
    it "return #{student_hash[:id]} id for #{student_hash[:firstname]} #{student_hash[:lastname]}" do
      john_doe = described_class.new(firstname: student_hash[:firstname], lastname: student_hash[:lastname])

      expect(john_doe.id).to eql(student_hash[:id])
    end
  end
end
