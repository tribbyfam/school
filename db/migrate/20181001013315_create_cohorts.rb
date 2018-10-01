class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :cohort_name
      t.date :start_date
      t.date :end_date
      t.references :instructor
      t.references :student

      t.timestamps
    end
  end
end
