module ZodiacSigns  
  class Scorpio < ZodiacSign
    DECANATES = %w(mars sun venus)
    TERMS = [['mars', 7], ['venus', 11], ['mercury', 19], ['jupiter', 24], ['saturn', 30]]
    RULER = 'mars'
    
    def initialize
      @name = 'scorpio'
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