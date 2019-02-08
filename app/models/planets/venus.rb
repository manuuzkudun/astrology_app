module Planets
  class Venus < Planet
    DOMICILES = %w(taurus libra).freeze
    EXALTATION = 'pisces'.freeze
    DETRIMENTS = %w(scorpio aries).freeze
    FALL = 'virgo'.freeze
    
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
  
