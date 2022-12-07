namespace :slurp do
  desc "TODO"
  task causes: :environment do

    require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "causes.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = Cause.new
    t.politician_id = row["politician_id"]
    t.industry_id = row["industry_id"]
    t.priority = row["priority"]
 
    t.save
      puts "#{t.politician_id}"
    end

  puts "There are now #{Cause.count} rows in the causes table"

  end

end

# ------

namespace :slurp do
  desc "TODO"
  task districts: :environment do

    require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "districts.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = District.new
    t.name = row["name"]
 
    t.save
      puts "district saved"
    end

  puts "There are now #{District.count} rows in the districts table"

  end

end
