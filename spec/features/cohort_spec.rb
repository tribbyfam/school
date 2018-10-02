require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    it 'can be reached successfully' do
      visit cohorts_path
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Courses offered' do
      visit cohorts_path
      expect(page).to have_content(/List of Students/)
    end
  end

  describe "creation of a student" do
    it 'has a new form that can be reached' do
      visit new_cohort_path
      expect(page.status_code).to eq(200)
    end
  end
end
