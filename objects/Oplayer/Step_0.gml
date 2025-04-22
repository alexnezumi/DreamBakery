//movimento
var tecla_cima = keyboard_check(vk_up);
var tecla_baixo = keyboard_check (vk_down);
var tecla_esquerda = keyboard_check(vk_left);
var tecla_direita = keyboard_check(vk_right);
var tecla = tecla_direita - tecla_esquerda != 0 || tecla_baixo - tecla_cima != 0;

dir = point_direction(0,0,tecla_direita- tecla_esquerda,tecla_baixo - tecla_cima);
velh = lengthdir_x(velc * tecla, dir);
velv = lengthdir_y(velc * tecla,dir);

// Virar o sprite horizontalmente
if (tecla_direita) {
    image_xscale = -2; // Normal
}
if (tecla_esquerda) {
    image_xscale = 2; // Espelhado
}


//colisão

if(place_meeting(x + velh,y,Ocolisores )){
	while(!place_meeting(x+sign(velh), y, Ocolisores)){
		x=x+sign(velh);
	}
velh=0;
}

x+=velh;

if (place_meeting(x,y+velv,Ocolisores)){
	while(!place_meeting(x, y+ sign(velv), Ocolisores)){
		y=y+sign(velv);
	}
velv=0;
}

y+= velv;


