class ProfilesController < ApplicationController
  def edit
    @profile = current_user.profile
  end

  def update
    current_user.profile.update!(score_config: parse_dignity_scores)
  end

  private

  def parse_dignity_scores
    dignity_scores = {}
    params[:score_config].each do |dignity, dignity_data|
      binding.pry
      dignity_scores[dignity] = dignity_data['score'].to_i
    end
    dignity_scores
  end


end
