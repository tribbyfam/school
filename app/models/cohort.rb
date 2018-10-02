class Cohort < ApplicationRecord
  validates_presence_of :cohort_name, :start_date, :end_date

  def new
  end

  def create
    
  end
end


