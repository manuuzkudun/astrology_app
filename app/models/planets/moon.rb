module Planets
  class Moon < Planet
    DOMICILES = %w(cancer).freeze
    EXALTATION = 'taurus'.freeze
    DETRIMENTS = %w(capricorn).freeze
    FALL = 'scorpio'.freeze
    JOY = 1
    AVRG_SPEED = 0.5

    attr_reader :domiciles, :exaltation

    def initialize(params)
      super(params)
      @domiciles = get_domiciles(DOMICILES)
      @exaltation = get_exaltation(EXALTATION)
      @detriments = get_detriments(DETRIMENTS)
      @fall = get_fall(FALL)
    end

    def in_joy?
      @house == JOY
    end

    def fast?
      @speed > AVRG_SPEED
    end
  end
end
