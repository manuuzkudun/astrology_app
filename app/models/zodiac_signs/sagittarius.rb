module ZodiacSigns  
  class Sagittarius < ZodiacSign
    DECANATES = %w(mercury moon saturn)
    TERMS = [['jupiter', 12], ['venus', 17], ['mercury', 21], ['saturn', 26], ['mars', 30]]
    RULER = 'jupiter'
    
    def initialize
      @name = 'sagittarius'
    end
    
    def to_s
      @name
    end
    
    def ruler
      RULER
    end
    
    def decanates
      DECANATES
    end
    
    def terms
      TERMS
    end
  end
end