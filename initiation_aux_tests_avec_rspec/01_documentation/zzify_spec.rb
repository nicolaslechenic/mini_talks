require_relative './zzify'
require_relative './tinyspec'

TinySpec.expect_equals(12.process, 'Fizz')
TinySpec.expect_equals(15.process, 'FizzBuzz')
TinySpec.expect_equals(20.process, 'Buzz')
TinySpec.expect_equals(22.process, 22)