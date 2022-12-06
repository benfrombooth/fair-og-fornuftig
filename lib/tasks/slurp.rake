namespace :slurp do
  desc "TODO"
  task anonymity_levels: :environment do

  require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "anonymity_levels.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
  t = Anonymity_Level.new
  t.name = row["permission_name"]
  t.photo = row["permission_photo"]
  t.story = row["permission_story"]
  t.media = row["permission_media"]
  t.save
end

puts "There are now #{Anonymity_Level.count} rows in the anonymity_levels table"

end

end
