/// @description Move the piece to its destination.
// A few definitions
// course: the direction the vehicle is moving
// heading: the direction the vehicle is pointing
// bearing: the direction to the destination
// relative bearing: the angle between the heading and the bearing

// if we're far from our destination, then we need to move
if( point_distance(x,y, space_position[destination].x,space_position[destination].y) > 1 )
{
	heading = image_angle;
	bearing = point_direction(x,y,space_position[destination].x,space_position[destination].y);
	relative_bearing = ((((bearing - heading) mod 360) + 540) mod 360) - 180;  // see http://stackoverflow.com/a/25269402/994628
	
	// if we are not facing our destination, then we need to turn
	if(abs(relative_bearing) > 1)
	{
		speed = 0;  // stop before turning
		// we will turn to the left or the right depending on our relative bearing
		if(relative_bearing > 0) heading += 1;
		else heading -= 1;
		heading = wrap(heading, 0, 360) // always keep our heading between 0 and 360 degrees
		image_angle = heading;
	}
	// if we are already facing in the right direction, then start moving
	else
	{
		motion_set(image_angle,2);
	}
}
// if we are at our destination, then stop and make sure we are exactly at our destination
else
{
	speed = 0;
	x = space_position[destination].x;
	y = space_position[destination].y;
	
	heading = image_angle;
	bearing = space_position[destination].course;
	relative_bearing = ((((bearing - heading) mod 360) + 540) mod 360) - 180;  // see http://stackoverflow.com/a/25269402/994628
	
	// if we are not facing the correct direction, then we need to turn
	if(abs(relative_bearing) > 1)
	{
		// we will turn to the left or the right depending on our relative bearing
		if(relative_bearing > 0) rotation = 1;
		else rotation = -1;
		heading += rotation;
		heading = wrap(heading, 0, 360) // always keep our heading between 0 and 360 degrees
		image_angle = heading;
	}	
}
