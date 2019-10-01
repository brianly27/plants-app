User.destroy_all
Room.destroy_all
Window.destroy_all
PlantsWindow.destroy_all
Plant.destroy_all

brian = User.create(name: "Brian", user_name: "Young_Skip_Bayless")
kitchen = Room.create(name: "Kitchen", user_id: 1)
window_1 = Window.create(room_id: 1, facing_direction: "south", light_intensity: "high")
fig = Plant.create(name:"Fiddle Leaf Fig")  
wp1 = PlantsWindow.create(window_id: 1, plant_id: 1)
