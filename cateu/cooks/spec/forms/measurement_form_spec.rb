require 'rails_helper'

describe "MeasurementForm" do
  describe '#submit' do
    it 'creates a new measurement for each key/value pair in hash' do
      hash = Hash[1, [2, "cups"], 2, [4, "whole"]]
      mform = MeasurementForm.new(hash)
      expect(mform.measurements.count).to eq(2)
    end

  end
end
