module ZodiacSigns  
  class Cancer < ZodiacSign
    DECANATES = %w(venus mercury moon)
    TERMS = [['mars', 6], ['venus', 12], ['mercury', 18], ['jupiter', 25], ['saturn', 30]]
    RULER = 'moon'
    
    def initialize
      @name = 'cancer'
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