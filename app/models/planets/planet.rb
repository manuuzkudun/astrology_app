module Planets
  class Planet
    attr_reader :current_sign, :sign_degree, :decanate, :latitude, :name

    def initialize(params)
      @name = params[:planet_name]
      @current_sign = ZodiacSigns::ZodiacSignFactory.create(params[:current_sign])
      @sign_degree = params[:sign_degree]
      @latitude = params[:latitude]
      @decanate = get_decanate(@current_sign, @sign_degree)
      @term = get_term(@current_sign, @sign_degree)
    end

    def to_s
      @name
    end

    def in_domicile?
      @domiciles.any? { |d| d == @current_sign }
    end

    def in_exaltation?
      @exaltation == @current_sign
    end

    def in_detriment?
      @detriments.any? { |d| d == @current_sign }
    end

    def in_fall?
      @fall == @current_sign
    end

    def in_decanate?
      @decanate == @name
    end

    def in_term?
      @term == @name
    end

    def in_reception_of_domiciles?(other_planets)
      result = false
      other_planets.each do |pl|
        next if pl == self
        if pl.domiciles.include?(self.current_sign) && self.domiciles.include?(pl.current_sign)
          result = true
        end
      end
      result
    end

    def in_reception_of_exaltation?(other_planets)
      result = false
      other_planets.each do |pl|
        next if pl == self
        if pl.exaltation == self.current_sign && self.exaltation == pl.current_sign
          result = true
        end
      end
      result
    end

    def get_domiciles(domicile_list)
      domicile_list.map { |sign_name| ::ZodiacSigns::ZodiacSignFactory.create(sign_name) }
    end

    def get_exaltation(exaltation_sign)
      ZodiacSigns::ZodiacSignFactory.create(exaltation_sign)
    end

    def get_detriments(detriment_list)
      detriment_list.map { |sign_name| ZodiacSigns::ZodiacSignFactory.create(sign_name) }
    end

    def get_fall(fall_sign)
      ZodiacSigns::ZodiacSignFactory.create(fall_sign)
    end

    def get_decanate(zodiac_sign, degree)
      decs = zodiac_sign.decanates
      raise '3 decanates for a given sign' if decs.size != 3

      return decs.first if degree < 10
      return decs[1] if degree < 20
      return decs[2]
    end

    def get_term(zodiac_sign, degree)
      zodiac_sign.terms.select do |term_data|
        max_degree = term_data[1]
        degree < max_degree
      end.first.first
    end
  end
end
