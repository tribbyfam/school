require 'rails_helper'

RSpec.describe Course, type: :model do
  describe "creation" do
    before do
      @course = Course.create(course_name: "Any name")
    end

    it "can be created" do
      expect(@course).to be_valid
    end
    it "cannot be created without a name" do
      @course.course_name = nil
      expect(@course).to_not be_valid
    end
  end
end
