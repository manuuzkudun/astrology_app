module Planets
  class Sun < Planet
    DOMICILES = %w(leo).freeze
    EXALTATION = 'aries'.freeze
    DETRIMENTS = %w(aquarius).freeze
    FALL = 'libra'.freeze
    JOY = 9
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
