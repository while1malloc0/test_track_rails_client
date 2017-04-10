require 'rails_helper'

RSpec.describe TestTrack::Fake::SplitDetail do
  subject { Class.new(described_class).new("great_split").details }

  context 'when splits exist' do
    describe '#details' do
      it 'returns a hash of split details for a split' do
        expect(subject[:name]).to eq "great_split"
        expect(subject[:owner]).to eq "mobile team"
        expect(subject[:platform]).to eq "mobile"
        expect(subject[:location]).to eq "home screen"
        expect(subject[:assignment_criteria]).to eq "user has mobile app"
        expect(subject[:hypothesis]).to eq "user will interact more with blue banner"
      end
    end
  end
end
