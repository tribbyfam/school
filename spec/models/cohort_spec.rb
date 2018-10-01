require 'rails_helper'

RSpec.describe Cohort, type: :model do
  describe "creation" do
    before do
      @cohort = Cohort.create(cohort_name: "sei", start_date: Date.today, end_date: :date)
    end

    it "can be created" do
      expect(@cohort).to be_valid
    end

    it "cannot be created without a student" do
      @cohort.cohort_name = nil
      @cohort.start_date = nil
      @cohort.end_date = nil
      expect(@cohort).to_not be_valid
    end
  end
end
