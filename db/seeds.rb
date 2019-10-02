User.destroy_all
Room.destroy_all
Window.destroy_all
PlantsWindow.destroy_all
Plant.destroy_all

User.create(name: "Brian", user_name: "Young_Skip_Bayless")
Room.create(name: "Kitchen", user_id: 1)
Window.create(room_id: 1, facing_direction: "south", light_intensity: "high")
Plant.create(name:"Fiddle Leaf Fig")  
PlantsWindow.create(window_id: 1, plant_id: 1)

# brian = User.first
# brian.rooms.first.windows.first.plants.first.name

