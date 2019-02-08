module ZodiacSigns    
  class Gemini < ZodiacSign
    DECANATES = %w(jupiter mars sun)
    TERMS = [['mercury', 6], ['jupiter', 12], ['venus', 17], ['mars', 24], ['saturn', 30]]
    RULER = 'mercury'
    
    def initialize
      @name = 'gemini'
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