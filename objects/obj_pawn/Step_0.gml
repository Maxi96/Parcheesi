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
	relative_bearing = bearing - heading;
	
	// if we are not facing our destination, then we need to turn
	if(abs(relative_bearing) > 1)
	{
		speed = 0;  // stop before turning
		// we will turn to the left or the right depending on our relative bearing
		if(relative_bearing > 0) rotation = 1;
		else rotation = -1;
		image_angle += rotation;
		// always keep our image angle between 0 and 360 degrees
		if(image_angle >= 360) image_angle -= 360;
	}
	else
	{
		motion_set(image_angle,2);
	}
}
else
{
	speed = 0;
	x = space_position[destination].x;
	y = space_position[destination].y;
}