// move
x_spd = lengthdir_x( spd, dir )
y_spd = lengthdir_y( spd, dir )



x += x_spd
y += y_spd

// cleanup
#region

// destroy
if destroy == true { instance_destroy() }

// collision
if place_meeting(x + x_spd, y , obj_wall_solid) { destroy = true }

// bullet out of range
if point_distance( xstart, ystart, x, y ) > max_distance { destroy = true }

#endregion

