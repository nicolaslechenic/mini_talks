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

    # @return [String] Hash to identify user
    def id
      Digest::SHA1.hexdigest(base_id)
    end

    protected

    # Base id is used to generate
    # hashed id
    #
    # @return [String] fullname with firstname as first
    def base_id
      "#{firstname} #{lastname}"
    end
  end
end
