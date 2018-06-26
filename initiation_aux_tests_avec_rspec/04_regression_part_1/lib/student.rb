require 'digest'

module Schooly
  class Student
    attr_reader :firstname, :lastname

    def initialize(firstname:, lastname:)
      @firstname  = firstname
      @lastname   = lastname
    end

    def fullname
      "#{firstname} #{lastname}"
    end

    def id
      Digest::SHA1.hexdigest(fullname)
    end
  end
end
