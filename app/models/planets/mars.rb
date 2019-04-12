module Planets
  class Mars < Planet
    DOMICILES = %w(aries scorpio).freeze
    EXALTATION = 'capricorn'.freeze
    DETRIMENTS = %w(libra taurus).freeze
    PILGRIM_SIGNS = %w(gemini virgo aquarius).freeze
    FALL = 'cancer'.freeze
    JOY = 6
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
