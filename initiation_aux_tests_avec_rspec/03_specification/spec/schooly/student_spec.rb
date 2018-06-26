require_relative '../spec_helper'

TinySpec.new do

  [{
    firstname: 'John',
    lastname: 'Doe',
    id: 'ae6e4d1209f17b460503904fad297b31e9cf6362'
  }].each do |student_hash|
    it "return #{student_hash[:id]} id for #{student_hash[:firstname]} #{student_hash[:lastname]}" do
      john_doe =
        Schooly::Student.new(student_hash[:firstname], student_hash[:lastname])

      expect_equals(john_doe.id, student_hash[:id])
    end
  end
end
