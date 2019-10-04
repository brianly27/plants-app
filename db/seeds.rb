require 'csv'

# User.destroy_all
# Room.destroy_all
# Window.destroy_all
# PlantsWindow.destroy_all
# Plant.destroy_all

# User.create(name: "Brian", user_name: "Young_Skip_Bayless")
# Room.create(name: "Kitchen", user_id: 1)
# Window.create(room_id: 1, facing_direction: "south", light_intensity: "high")
# Plant.create(name:"Fiddle Leaf Fig")  
# PlantsWindow.create(window_id: 1, plant_id: 1)

# brian = User.first
# brian.rooms.first.windows.first.plants.first.name

csv_text = File.read(Rails.root.join('lib', 'seeds', 'plants_raw.csv')) #locate path to csv and read the file
csv = CSV.parse(csv_text, :headers => true, :encoding 'ISO-8859-1') #accounts for headers
csv.each do |row| #iterate over each row in csv
    t = Plant.new 
    t.              #associate each attribute with the attribute in the csv