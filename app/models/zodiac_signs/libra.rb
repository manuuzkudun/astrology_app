module ZodiacSigns
  class Libra < ZodiacSign
    DECANATES = %w(moon saturn jupiter)
    TERMS = [['saturn', 6], ['mercury', 14], ['jupiter', 21], ['venus', 28], ['mars', 30]]
    RULER = 'venus'

    def initialize
      @name = 'libra'
      @ruler = RULER
      @decanates = DECANATES
      @terms = TERMS
    end
  end
end
