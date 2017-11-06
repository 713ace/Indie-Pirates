draw_set_halign(fa_center)
draw_set_color(c_white)
if global.page = 1
{
	draw_set_font(font2)
	draw_text(obj_select.x,obj_select.y + 64,string("Old Faithful"))
	draw_set_font(font0)
	draw_text(obj_select.x,obj_select.y + 192,string("Plunder To Purchase: Free"))
}
if global.page = 2
{
	draw_set_font(font2)
	draw_text(obj_select.x,obj_select.y + 64,string("Cherry Krista"))
	draw_set_font(font0)
	draw_text(obj_select.x,obj_select.y + 192,string("Plunder To Purchase: $50,000"))
}
if global.page = 3
{
	draw_set_font(font2)
	draw_text(obj_select.x,obj_select.y + 64,string("Gods Garden"))
	draw_set_font(font0)
	draw_text(obj_select.x,obj_select.y + 192,string("Plunder To Purchase: $200,000"))
}
if global.page = 4
{
	draw_set_font(font2)
	draw_text(obj_select.x,obj_select.y + 64,string("Morning Glory"))
	draw_set_font(font0)
	draw_text(obj_select.x,obj_select.y + 192,string("Plunder To Purchase: $3,000,000"))
}
if global.page = 5
{
	draw_set_font(font2)
	draw_text(obj_select.x,obj_select.y + 64,string("Golden Girl"))
	draw_set_font(font0)
	draw_text(obj_select.x,obj_select.y + 192,string("Plunder To Purchase: $25,000,000"))
}
draw_set_font(font0)
draw_text(obj_health1.x, obj_health1.y + 64,string("Durability"))
draw_text(obj_speed1.x, obj_speed1.y + 64,string("Speed"))
draw_text(obj_handling1.x, obj_handling1.y + 64,string("Handling"))