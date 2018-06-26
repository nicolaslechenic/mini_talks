require_relative '../lib/zzify'
require_relative './tinyspec'

using TinySpec

it 'return Fizz when Integer is divisible by 3' do
  expect_equals(12.process, 'Fizz')
end

it 'return Buzz when Integer is divisible by 5' do
  expect_equals(20.process, 'Buzz')
end

it 'return FizzBuzz when Integer is divisible by 3 and 5' do
  expect_equals(15.process, 'FizzBuzz')
end

it "return number when Integer isn't divisible by 3 or 5" do
  expect_equals(22.process, 22)
end
