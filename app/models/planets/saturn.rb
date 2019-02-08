module Planets
  class Saturn < Planet
    DOMICILES = %w(capricorn aquarius).freeze
    EXALTATION = 'libra'.freeze
    DETRIMENTS = %w(cancer leo).freeze
    FALL = 'aries'.freeze
    
    attr_reader :domiciles, :exaltation
    
    def initialize(params)
      super(params)
      @domiciles = get_domiciles(DOMICILES)
      @exaltation = get_exaltation(EXALTATION)
      @detriments = get_detriments(DETRIMENTS)
      @fall = get_fall(FALL)
    end
  end
end
  