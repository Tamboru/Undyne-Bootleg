#region Movimento e colisão


if x = clamp(x, 320, 640) and y = 224 // Aqui detecta se a flecha estão nessas cordenadas, o "clamp" limita o movimento da flecha entre 320 a 640 x, se a flecha estiver nesse campo, então
{
	x -= velocidade // x será dimiduido por velocidade que é 5, criando movimento
	if place_meeting(+x, y, defensor_obj) //se o objeto tocar a parte +x do defensor, então
	{
		instance_destroy() //se destruir
	}
}
if x = 320 and y = clamp(y, 224, 512) //o de cima vale pro resto só mudando as cordenadas
{ 
	image_angle = 270 //isso muda a direção da sprite, para a flecha não ficar errado quanto ao curso
	y -= velocidade
	if place_meeting(x, +y, defensor_obj)
	{
		instance_destroy()
		
	}
}
if x = clamp(x, -32, 320) and y = 224
{ 
	image_angle = 180
	x += velocidade
	if place_meeting(+x, y, defensor_obj)
	{
		instance_destroy()
		
	}
}
if x = 320 and y = clamp(y, -32, 224)
{
	image_angle = 90
	y += velocidade
	if place_meeting(x, +y, defensor_obj)
	{
		
		instance_destroy()
		
	}
}


#endregion