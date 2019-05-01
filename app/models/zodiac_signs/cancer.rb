module ZodiacSigns
  class Cancer < ZodiacSign
    DECANATES = %w(venus mercury moon)
    TERMS = [['mars', 6], ['venus', 12], ['mercury', 18], ['jupiter', 25], ['saturn', 30]]
    RULER = 'moon'

    def initialize
      @name = 'cancer'
      @ruler = RULER
      @decanates = DECANATES
      @terms = TERMS
    end
  end
end
