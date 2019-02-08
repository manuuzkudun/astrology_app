module ZodiacSigns
  class Leo < ZodiacSign
    DECANATES = %w(saturn jupiter mars)
    TERMS = [['jupiter', 6], ['venus', 11], ['saturn', 18], ['mercury', 24], ['mars', 30]]
    RULER = 'sun'
    
    def initialize
      @name = 'leo'
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