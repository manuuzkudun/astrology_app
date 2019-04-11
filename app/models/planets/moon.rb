module Planets
  class Moon < Planet
    DOMICILES = %w(cancer).freeze
    EXALTATION = 'taurus'.freeze
    DETRIMENTS = %w(capricorn).freeze
    PILGRIM_SIGNS = %w(aries gemini leo virgo libra sagittarius aquarius).freeze
    FALL = 'scorpio'.freeze
    JOY = 1
    AVRG_SPEED = 0.5

    attr_reader :domiciles, :exaltation

    def initialize(params)
      super(params)
      @domiciles = get_signs(DOMICILES)
      @exaltation = get_sign(EXALTATION)
      @detriments = get_signs(DETRIMENTS)
      @fall = get_sign(FALL)
      @pilgrim_signs = get_signs(PILGRIM_SIGNS)
    end

    def in_joy?
      @house == JOY
    end

    def fast?
      @speed > AVRG_SPEED
    end
  end
end
