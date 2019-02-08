module ZodiacSigns  
  class Libra < ZodiacSign
    DECANATES = %w(moon saturn jupiter)
    TERMS = [['saturn', 6], ['mercury', 14], ['jupiter', 21], ['venus', 28], ['mars', 30]]
    RULER = 'venus'
    
    def initialize
      @name = 'libra'
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