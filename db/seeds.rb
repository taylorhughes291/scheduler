# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'

def delete_data
    Availability.delete_all
end

def coach_data_seed
    url = "https://sheets.googleapis.com/v4/spreadsheets/1csAQ29OciYsfihyIbrM9iFPV7c9P8gu_1EKrQXe8TTI/values/coaches?alt=json&key=" + ENV['GOOGLE_API_KEY']
    data = RestClient.get(url)
    data_array = JSON.parse(data)
    coach_availability = data_array["values"]
    coach_availability.each do |s|
        Availability.create(name: s[0], timezone: s[1], day_of_week: s[2], available_at: s[3], available_until: s[4])
    end
end

delete_data()
coach_data_seed()