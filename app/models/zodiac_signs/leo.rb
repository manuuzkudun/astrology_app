module ZodiacSigns
  class Leo < ZodiacSign
    DECANATES = %w(saturn jupiter mars)
    TERMS = [['jupiter', 6], ['venus', 11], ['saturn', 18], ['mercury', 24], ['mars', 30]]
    RULER = 'sun'

    def initialize
      @name = 'leo'
      @ruler = RULER
      @decanates = DECANATES
      @terms = TERMS
    end
  end
end
