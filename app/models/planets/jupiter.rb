module Planets
  class Jupiter < Planet
    DOMICILES = %w(sagittarius pisces).freeze
    EXALTATION = 'cancer'.freeze
    DETRIMENTS = %w(gemini virgo).freeze
    FALL = 'capricorn'.freeze
    
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
  
