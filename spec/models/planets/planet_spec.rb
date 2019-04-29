require "rails_helper"

RSpec.describe Planets::Planet, :type => :model do
  let(:params) do
    {
      planet_name: planet_name,
      current_sign: current_sign,
      house: 10,
      sign_degree: 12.05,
      speed: 0.09
    }
  end
  let(:planet) { Planets::PlanetFactory.create(params) }

  describe '#in_domicile?' do
    let(:planet_name) { 'jupiter' }

    subject { planet.in_domicile? }

    context 'when is in the domicile sign' do
      let(:current_sign) { 'pisces' }

      it { is_expected.to be true }
    end

    context 'when is not in the domicile sign' do
      let(:current_sign) { 'virgo' }

      it { is_expected.to be false }
    end
  end
end
