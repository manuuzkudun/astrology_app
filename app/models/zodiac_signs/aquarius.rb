module ZodiacSigns  
  class Aquarius < ZodiacSign
    DECANATES = %w(venus mercury moon)
    TERMS = [['mercury', 7], ['venus', 13], ['jupiter', 20], ['mars', 25], ['saturn', 30]]
    RULER = 'saturn'
    
    def initialize
      @name = 'aquarius'
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