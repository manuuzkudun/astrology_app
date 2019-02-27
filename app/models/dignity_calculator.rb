class DignityCalculator
  DIGNITY_SCORES= {
    "exaltation_reception": {
      method: :in_reception_of_exaltation?,
      score: 4
    },
    "domicile": {
      method: :in_domicile?,
      score: 5
    },
    "exaltation": {
      method: :in_exaltation?,
      score: 4
    },
    "detriment": {
      method: :in_detriment?,
      score: -5
    },
    "fall": {
      method: :in_fall?,
      score: -4
    },
    "decanate": {
      method: :in_decanate?,
      score: 1
    },
    "term": {
      method: :in_term?,
      score: 2
    },
    "domicile_reception": {
      method: :in_reception_of_domiciles?,
      score: 5
    },
    "in_house_1": {
      method: :in_house_1?,
      score: 5
    },
    "in_house_2": {
      method: :in_house_2?,
      score: 3
    },
    "in_house_3": {
      method: :in_house_3?,
      score: 1
    },
    "in_house_4": {
      method: :in_house_4?,
      score: 4
    },
    "in_house_5": {
      method: :in_house_5?,
      score: 3
    },
    "in_house_6": {
      method: :in_house_6?,
      score: -5
    },
    "in_house_7": {
      method: :in_house_7?,
      score: 4
    },
    "in_house_8": {
      method: :in_house_8?,
      score: -5
    },
    "in_house_9": {
      method: :in_house_9?,
      score: 2
    },
    "in_house_10": {
      method: :in_house_10?,
      score: 5
    },
    "in_house_11": {
      method: :in_house_11?,
      score: 4
    },
    "in_house_12": {
      method: :in_house_12?,
      score: -4
    },
    "in_joy": {
      method: :in_joy?,
      score: 2
    },
  }.freeze

  def initialize(planets, options=nil)
    @options = options
    @planets = planets
  end

  def calculate_for(planet)
    results = {}
    total_score = 0
    DIGNITY_SCORES.each do |dignity, dignity_data|
      score = dignity_data[:score]
      if dignity == :domicile_reception || dignity == :exaltation_reception
        dignified = planet.send(dignity_data[:method], @planets)
      else
        dignified = planet.send(dignity_data[:method])
      end
      total_score += score if dignified
      results[dignity] = {
        result: dignified,
        score: dignified ? score : 0
      }
    end
    results["total_score"] = total_score
    results
  end
end
