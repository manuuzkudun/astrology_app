module ZodiacSigns  
  class Pisces < ZodiacSign
    DECANATES = %w(saturn jupiter mars)
    TERMS = [['venus', 12], ['jupiter', 16], ['mercury', 19], ['mars', 28], ['saturn', 30]]
    RULER = 'jupiter'
    
    def initialize
      @name = 'pisces'
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