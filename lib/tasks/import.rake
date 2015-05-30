require 'csv'

namespace :import do
  desc "Import poems"
  task vachanasahityas: :environment do
    counter=0
    filename= File.join Rails.root, "sample_vachana.csv"
    CSV.foreach(filename, headers: true) do |row|
      vachana= VachanaSahitya.create(vachana: row["Vachana"], vachanakaara: row["Vachanakaara"], pen_name: row["Pen_Name"])
      puts "#{Vachana} - #{vachana.errors.full_messages.join(",")}" if vachana.errors.any?
      counter +=1 if vachana.persisted?
    end
    puts "Imported #{counter} vachanas"
  end
end
