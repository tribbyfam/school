5.times do |cohort|
  Cohort.create!(cohort_name: "#{cohort} sei", start_date: Date.today, end_date: Date.tomorrow, instructor_id: "1", student_id: "#{cohort}")
end

puts "5 cohorts has been created"

5.times do |course|
  Course.create!(course_name: "#{course} sei course", created_at: Date.today)
end

puts "5 courses has been created"