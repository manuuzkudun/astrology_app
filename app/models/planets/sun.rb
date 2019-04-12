module Planets
  class Sun < Planet
    DOMICILES = %w(leo).freeze
    EXALTATION = 'aries'.freeze
    DETRIMENTS = %w(aquarius).freeze
    PILGRIM_SIGNS = %w(taurus gemini cancer virgo scorpio capricorn pisces).freeze
    FALL = 'libra'.freeze
    JOY = 9
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
