module ZodiacSigns
  class Virgo < ZodiacSign
    DECANATES = %w(sun venus mercury)
    TERMS = [['mercury', 7], ['venus', 17], ['jupiter', 21], ['mars', 28], ['saturn', 30]]
    RULER = 'mercury'

    def initialize
      @name = 'virgo'
      @ruler = RULER
      @decanates = DECANATES
      @terms = TERMS
    end
  end
end
