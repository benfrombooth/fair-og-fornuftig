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
      puts "District saved"
    end

  puts "There are now #{District.count} rows in the districts table"

  end

end

# ------

namespace :slurp do
  desc "TODO"
  task examples: :environment do

    require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "examples.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = Example.new
    t.user_id = row["user_id"]
    t.policy_id = row["policy_id"]
 
    t.save
      puts "Example saved"
    end

  puts "There are now #{Example.count} rows in the examples table"

  end

end

# ------

namespace :slurp do
  desc "TODO"
  task industries: :environment do

    require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "industries.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = Industry.new
    t.name = row["name"]
 
    t.save
      puts "Industry saved"
    end

  puts "There are now #{Industry.count} rows in the industries table"

  end

end

# ------

namespace :slurp do
  desc "TODO"
  task injustices: :environment do

    require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "injustices.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = Injustice.new
    t.description = row["description"]
    t.value_id = row["value_id"]
 
    t.save
      puts "Injustice saved"
    end

  puts "There are now #{Injustice.count} rows in the injustices table"

  end

end

# ------

namespace :slurp do
  desc "TODO"
  task municipalities: :environment do

    require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "municipalities.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = Municipality.new
    t.name = row["name"]
    t.district_id = row["district_id"]
 
    t.save
      puts "Municipality saved"
    end

  puts "There are now #{Municipality.count} rows in the municipalities table"

  end

end

# ------

namespace :slurp do
  desc "TODO"
  task policies: :environment do

    require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "policies.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = Policy.new
    t.description = row["description"]
    t.injustice_id = row["injustice_id"]
 
    t.save
      puts "Policy saved"
    end

  puts "There are now #{Policy.count} rows in the policies table"

  end

end

# ------

namespace :slurp do
  desc "TODO"
  task politicians: :environment do

    require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "politicians.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = Politician.new
    t.district_id = row["district_id"]
    t.party = row["party"]
    t.status_id = row["status_id"]
    t.name = row["name"]
    t.photo = row["photo"]
    t.spokesperson = row["spokesperson"]
 
    t.save
      puts "Politician saved"
    end

  puts "There are now #{Politician.count} rows in the politicians table"

  end

end

# ------

namespace :slurp do
  desc "TODO"
  task politicians: :environment do

    require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "politicians.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = Politician.new
    t.district_id = row["district_id"]
    t.party = row["party"]
    t.status_id = row["status_id"]
    t.name = row["name"]
    t.photo = row["photo"]
    t.spokesperson = row["spokesperson"]
    t.username = row["username"]
    t.password = row["password"]
 
    t.save
      puts "Politician saved"
    end

  puts "There are now #{Politician.count} rows in the politicians table"

  end

end

# ------

namespace :slurp do
  desc "TODO"
  task stances: :environment do

    require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "stances.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = Stance.new
    t.policy_id = row["policy_id"]
    t.politician_id = row["politician_id"]
    t.sentiment_score = row["sentiment_score"]
 
    t.save
      puts "Stance saved"
    end

  puts "There are now #{Stance.count} rows in the stances table"

  end

end

# ------

namespace :slurp do
  desc "TODO"
  task users: :environment do

    require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "users.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = User.new
    t.first_name = row["first_name"]
    t.last_name = row["last_name"]
    t.nationality = row["nationality"]
    t.industry_id = row["industry_id"]
    t.permission_name = row["permission_name"]
    t.permission_photo = row["permission_photo"]
    t.permission_story = row["permission_story"]
    t.permission_media = row["permission_media"]
    t.municipality_id = row["municipality_id"]
    t.personal_story = row["personal_story"]
    t.photo = row["photo"]
 
    t.save
      puts "User saved"
    end

  puts "There are now #{User.count} rows in the users table"

  end

end

# ------

namespace :slurp do
  desc "TODO"
  task values: :environment do

    require "csv"

  csv_text = File.read(Rails.root.join("lib", "csvs", "values.csv"))
  csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
  csv.each do |row|
    t = Value.new
    t.name = row["name"]
    t.description = row["description"]
    t.photo = row["photo"]
  
    t.save
      puts "Value saved"
    end

  puts "There are now #{Value.count} rows in the values table"

  end

end
