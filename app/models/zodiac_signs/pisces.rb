module ZodiacSigns
  class Pisces < ZodiacSign
    DECANATES = %w(saturn jupiter mars)
    TERMS = [['venus', 12], ['jupiter', 16], ['mercury', 19], ['mars', 28], ['saturn', 30]]
    RULER = 'jupiter'

    def initialize
      @name = 'pisces'
      @ruler = RULER
      @decanates = DECANATES
      @terms = TERMS
    end
  end
end
