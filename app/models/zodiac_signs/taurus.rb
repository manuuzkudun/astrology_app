module ZodiacSigns
  class Taurus < ZodiacSign
    DECANATES = %w(mercury moon saturn)
    TERMS = [['venus', 8], ['mercury', 14], ['jupiter', 22], ['saturn', 27], ['mars', 30]]
    RULER = 'venus'

    def initialize
      @name = 'taurus'
      @ruler = RULER
      @decanates = DECANATES
      @terms = TERMS
    end
  end
end
