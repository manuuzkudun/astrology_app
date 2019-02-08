module Planets
  class Moon < Planet
    DOMICILES = %w(cancer).freeze
    EXALTATION = 'taurus'.freeze
    DETRIMENTS = %w(capricorn).freeze
    FALL = 'scorpio'.freeze
    
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
  