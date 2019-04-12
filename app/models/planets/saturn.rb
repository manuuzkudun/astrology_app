module Planets
  class Saturn < Planet
    DOMICILES = %w(capricorn aquarius).freeze
    EXALTATION = 'libra'.freeze
    DETRIMENTS = %w(cancer leo).freeze
    PILGRIM_SIGNS = %w(scorpio sagittarius pisces).freeze
    FALL = 'aries'.freeze
    JOY = 12
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
