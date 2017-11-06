 // Draw Score
draw_set_font(font1)
draw_text_color(camera_get_view_x(view_camera[0]) + 32,camera_get_view_y(view_camera[0]) + 64,"Plunder: "+ string(global.varscore),c_white,c_white,c_white,c_yellow,1);
///Draw Healthbar
draw_healthbar(camera_get_view_x(view_camera[0])  + 32,camera_get_view_y(view_camera[0]) + 32,camera_get_view_x(view_camera[0]) + 184,camera_get_view_y(view_camera[0]) + 54,global.varhealth / 10,c_black,c_red,c_green,0,true,true)
//Draw Fire Timer
draw_healthbar(camera_get_view_x(view_camera[0])  + 1162,camera_get_view_y(view_camera[0]) + 698,camera_get_view_x(view_camera[0]) + 1282,camera_get_view_y(view_camera[0]) + 720,global.cannonballtimer * 3 + 10,c_black,c_orange,c_red,0,true,true)

/// Debug Draw
draw_set_color(c_maroon)
draw_text(camera_get_view_x(view_camera[0]) + 32,camera_get_view_y(view_camera[0]) + 96, "Debug")
draw_text(camera_get_view_x(view_camera[0]) + 32,camera_get_view_y(view_camera[0]) + 128,"Distance: " + string(global.pointdistance))
draw_text(camera_get_view_x(view_camera[0]) + 32,camera_get_view_y(view_camera[0]) + 160,"Direction: " +string(global.pointdirection))
draw_text(camera_get_view_x(view_camera[0]) + 32,camera_get_view_y(view_camera[0]) + 192,"Hspeed: " + string(global.varhspeed))
draw_text(camera_get_view_x(view_camera[0]) + 32,camera_get_view_y(view_camera[0]) + 224,"Vspeed: " +string(global.varvspeed))

//Draw obj_fort Healthbars
draw_healthbar(obj_fort1.x - 40,obj_fort1.y+10,obj_fort1.x + 40, obj_fort1.y -5,global.fort1health / 10,c_black,c_red,c_green,0,true,true)
draw_healthbar(obj_fort2.x - 40,obj_fort2.y+10,obj_fort2.x + 40, obj_fort2.y -5,global.fort2health / 20,c_black,c_red,c_green,0,true,true)
draw_healthbar(obj_fort3.x - 40,obj_fort3.y+10,obj_fort3.x + 40, obj_fort3.y -5,global.fort3health / 5,c_black,c_red,c_green,0,true,true)
draw_healthbar(obj_fort4.x - 40,obj_fort4.y+10,obj_fort4.x + 40, obj_fort4.y -5,global.fort4health / 50,c_black,c_red,c_green,0,true,true)