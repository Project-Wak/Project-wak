image_index = 0
depth = 999
check___ = 0

var laser = instance_create_depth(1626,800,player.depth-2,block_laser)
laser.width_ = 16
laser.x2 = 1626
laser.y2 = 800
laser.direction = 180
laser.damage_able = 320
laser.color_ = $FF474BE7


var laser = instance_create_depth(2085,800,player.depth-2,block_laser)
laser.width_ = 16
laser.x2 = 2085
laser.y2 = 800
laser.direction = 0
laser.damage_able = 320
laser.color_ = $FF474BE7


var test_mob = instance_create_depth(2899,1000,player.depth+3,mob_spawn_here)
test_mob.t_y = -900
test_mob.mob_type = 1
test_mob.xscale = 1.1
test_mob.yscale = 1.1
test_mob.mob_var = obj_lilla

wall1 = instance_create_depth(3072,192,depth,obj_floor_tile3)
wall1.image_yscale = 5


var test_mob = instance_create_depth(2100,652,player.depth+3,wak_drone)
test_mob.test_mob_type = 1
test_mob.image_xscale = 0.75
test_mob.image_yscale = 0.75
