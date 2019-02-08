module ZodiacSigns  
  class Capricorn < ZodiacSign
    DECANATES = %w(jupiter mars sun)
    TERMS = [['mercury', 7], ['jupiter', 14], ['venus', 22], ['saturn', 26], ['mars', 30]]
    RULER = 'saturn'
    
    def initialize
      @name = 'capricorn'
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