draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_font(font2)
draw_text_color(room_width/2,room_height/2 + 160,"Game Over",c_white,c_red,c_white,c_white,1)

draw_set_font(font1)
draw_text_color(room_width/2,room_height/2 + 240,"Best: " + "0",c_yellow,c_white,c_white,c_white,1) //Add Highscore Variable
draw_set_font(font3)
draw_text_color(room_width/2,room_height/2 - 120," Total Plunder: " + string(global.varscore),c_white,c_white,c_white,c_yellow,1)
              