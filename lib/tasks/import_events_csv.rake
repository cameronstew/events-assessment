require 'csv'
namespace :import_events_csv do
  task :create_events => :environment do
    csv_text = File.read('test_events.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Event.create!(row.to_hash)
    end
  end
end
