//room_instance_add(simple16x9, 0,0,door);
//does create a door but it doesnt snapp to the damn grid
instance_create_layer(5*32 - 16, 0, "Instances", door)
bottomDoor = instance_create_layer(6*32 - 16, 6 * 32, "Instances", door)
bottomDoor.image_angle = 180
leftDoor = instance_create_layer(16, 3*32 + 16, "Instances", door);
leftDoor.image_angle = 90
rightDoor = instance_create_layer(9*32 + 16, 2*32 + 16, "Instances", door);
rightDoor.image_angle = 270
