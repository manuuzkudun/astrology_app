module ZodiacSigns
  class ZodiacSign
    def to_s
      @name
    end

    def ==(another_sign)
      self.to_s == another_sign.to_s
    end
  end
end
