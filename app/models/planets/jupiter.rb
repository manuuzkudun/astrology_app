module Planets
  class Jupiter < Planet
    DOMICILES = %w(sagittarius pisces).freeze
    EXALTATION = 'cancer'.freeze
    DETRIMENTS = %w(gemini virgo).freeze
    PILGRIM_SIGNS = %w(taurus libra aquarius).freeze
    FALL = 'capricorn'.freeze
    JOY = 11
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
