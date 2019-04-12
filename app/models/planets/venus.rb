module Planets
  class Venus < Planet
    DOMICILES = %w(taurus libra).freeze
    EXALTATION = 'pisces'.freeze
    DETRIMENTS = %w(scorpio aries).freeze
    PILGRIM_SIGNS = %w(leo cancer sagittarius).freeze
    FALL = 'virgo'.freeze
    JOY = 5
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
