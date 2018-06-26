require_relative '../unattainable_cyberspace/gem_with_all_my_constants'

class Integer
  # /!\ IMPORTANT /!\
  #
  # This is THE method that process to find the solution !
  def process
    s = (self == GemWithAllMyConstants::FIRST_IMPORTANT_BATCH ? GemWithAllMyConstants::BID_FIRST : '')
    s << (self == GemWithAllMyConstants::SECOND_IMPORTANT_BATCH ? GemWithAllMyConstants::BID_SECOND : '')

    a =
      [
        (self % GemWithAllMyConstants::FIRST_IMPORTANT_BATCH),
        (self % GemWithAllMyConstants::SECOND_IMPORTANT_BATCH)
      ]

    bids = GemWithAllMyConstants::BID_FIRST + GemWithAllMyConstants::BID_SECOND

    if s.empty?
      return bids if a.inject(:+).zero?

      if a.include?(0)
        s <<
          if a[0].zero?
            GemWithAllMyConstants::BID_FIRST
          else
            GemWithAllMyConstants::BID_SECOND
          end
      end
    end

    s.empty? ? self : s
  end
end
