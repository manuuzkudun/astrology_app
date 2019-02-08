module ZodiacSigns    
  class Virgo < ZodiacSign
    DECANATES = %w(sun venus mercury)
    TERMS = [['mercury', 7], ['venus', 17], ['jupiter', 21], ['mars', 28], ['saturn', 30]]
    RULER = 'mercury'
    
    def initialize
      @name = 'virgo'
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