class DignityCalculator
  DIGNITY_SCORES = %w(domicile exaltation detriment fall pilgrim domicile_reception exaltation_reception
                      dispositor decanate term direct retrograde fast slow stationary in_joy via_combusta
                      in_house_1 in_house_2 in_house_3 in_house_4 in_house_5 in_house_6 in_house_7
                      in_house_8 in_house_9 in_house_10 in_house_11 in_house_12).freeze

  def initialize(planets, options=nil)
    @options = options
    @planets = planets
    @dignity_methods = YAML.load_file('./app/models/dignity_methods.yml')
    @dignity_scores = YAML.load_file('./app/models/dignity_scores.yml')
  end

  # TO-DO: Refractor
  def calculate_for(planet)
    results = {}
    total_score = 0
    DIGNITY_SCORES.each do |dignity|
      score = get_dignity_score(planet, dignity)
      total_score += score
      results[dignity.to_sym] = {
        result: !score.zero?,
        score: score
      }
    end
    results["total_score"] = total_score
    results
  end

  private

  def get_dignity_score(planet, dignity)
    method = @dignity_methods[dignity]['method']
    score = @dignity_scores[dignity]['score']

    case dignity
    when 'dispositor'
      planet_count = planet.send(method, @planets)
      dignified = planet_count > 0
      score =  score * planet_count
    when 'domicile_reception'
      dignified = planet.send(method, @planets)
    when 'exaltation_reception'
      dignified = planet.send(method, @planets)
    else
      dignified = planet.send(method)
    end

    return dignified ? score : 0
  end
end
