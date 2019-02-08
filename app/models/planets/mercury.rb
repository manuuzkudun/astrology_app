module Planets
  class Mercury < Planet
    DOMICILES = %w(gemini virgo).freeze
    EXALTATION = 'virgo'.freeze
    DETRIMENTS = %w(sagittarius pisces).freeze
    FALL = 'pisces'.freeze
    
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
  