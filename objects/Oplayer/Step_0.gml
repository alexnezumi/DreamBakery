if keyboard_check(vk_up)||keyboard_check(ord("W")){
	y-=2
}

if keyboard_check(vk_down)||keyboard_check(ord("S")){
	y+=2
}

if keyboard_check(vk_left)||keyboard_check(ord("A")){
	x-=2 image_xscale=1
}

if keyboard_check(vk_right)||keyboard_check(ord("D")){
	x+=2 image_xscale=-1
}


