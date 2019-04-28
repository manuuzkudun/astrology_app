module ZodiacSigns
  class ZodiacSign
    ZODIAC_SIGNS = %w(aries taurus gemini cancer leo virgo libra scorpio sagittarius
                      capricorn aquarius pisces).freeze
    def to_s
      @name
    end

    def ==(another_sign)
      self.to_s == another_sign.to_s
    end

    ZODIAC_SIGNS.each do |sign|
      method = "in_#{sign}?".to_sym
      define_method method do
        @name == sign
      end
    end
  end
end
