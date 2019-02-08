module Planets
  class Sun < Planet    
    DOMICILES = %w(leo).freeze
    EXALTATION = 'aries'.freeze
    DETRIMENTS = %w(aquarius).freeze
    FALL = 'libra'.freeze
    
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
  
