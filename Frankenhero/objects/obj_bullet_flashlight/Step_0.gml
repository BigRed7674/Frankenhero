// move
xspd = lengthdir_x( spd, dir )
yspd = lengthdir_y( spd, dir )



x += xspd
y += yspd

// cleanup
#region

// destroy
if destroy == true { instance_destroy() }

// collision
if place_meeting(x + xspd, y , obj_wall_solid) { destroy = true }

// bullet out of range
if point_distance( xstart, ystart, x, y ) > max_distance { destroy = true }

#endregion

