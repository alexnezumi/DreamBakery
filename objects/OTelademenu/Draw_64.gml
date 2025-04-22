draw_set_font(Ft_menu);
draw_set_color(c_purple);

var dist = 50;
var gui_largura=display_get_gui_width()
var gui_altura=display_get_gui_height()
var lar = gui_largura/2;
var alt = gui_altura/2;

for(var i = 0;i < op_max;i++){
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	
	if(index == i){
	draw_set_color(c_gray);
	}else{
	draw_set_color(c_purple);
	}
	
	draw_text(lar, alt + (dist * i),opcoes[i]);
}