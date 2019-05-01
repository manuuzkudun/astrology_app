module ZodiacSigns
  class Scorpio < ZodiacSign
    DECANATES = %w(mars sun venus)
    TERMS = [['mars', 7], ['venus', 11], ['mercury', 19], ['jupiter', 24], ['saturn', 30]]
    RULER = 'mars'

    def initialize
      @name = 'scorpio'
      @ruler = RULER
      @decanates = DECANATES
      @terms = TERMS
    end
  end
end
