module ZodiacSigns
  class ZodiacSign  
    def ==(another_sign)
      self.to_s == another_sign.to_s
    end
  end
end