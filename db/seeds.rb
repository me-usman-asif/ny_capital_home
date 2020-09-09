file = File.read('dataset.json')

seed_data = JSON.parse(file)

seed_data.each do |project|
  Project.create!(
    name: project['Project School Name'],
    description: project['Project Description'],
    start_date: project['Project Phase Actual Start Date'],
    end_date: project['Project Phase Planned End Date'],
    budget_amount: project['Project Budget Amount'].to_f,
    estimated_amount: project['Final Estimate of Actual Costs Through End of Phase Amount'].to_f,
    total_amount: project['Total Phase Actual Spending Amount'].to_f
  )
end

puts 'All Projects are created!'
