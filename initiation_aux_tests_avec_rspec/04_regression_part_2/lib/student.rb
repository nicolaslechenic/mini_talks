require 'digest'

module Schooly
  class Student
    attr_reader :firstname, :lastname

    def initialize(firstname:, lastname:)
      @firstname  = firstname
      @lastname   = lastname
    end

    def fullname
      "#{lastname} #{firstname}"
    end

    def id
      Digest::SHA1.hexdigest(base_id)
    end

    private

    def base_id
      "#{firstname} #{lastname}"
    end
  end
end
