#region Controles

baixo = keyboard_check(vk_down) //Detecta se a tecla de seta para baixo foi pressionada e armazena isso na variável "baixo"
cima = keyboard_check(vk_up) // a mesma coisa que a de cima porém mudando a seta e a variável
direita = keyboard_check(vk_right) // ''
esquerda = keyboard_check(vk_left) // ''

#endregion
#region Movimentação


if baixo = 1 //se a variável baixo for verdadeira, ou seja, tecla para baixo pressionada, então
{
	diff = angle_difference(180,image_angle) // pega a diferença do ângulo atual da imagem para do ângulo escolhido
	image_angle+=clamp(.7*diff,-spd,spd) // cria a animação  limitando o mevimento entre o ângulo inicial e final
}
if cima = 1 // é o mesmo bloco de cima, prorem para o movimento de para cima, esse bloco if vai se repetir 3 vezes
{
	diff = angle_difference(0,image_angle)
    image_angle+=clamp(.7*diff,-spd,spd)
}
if direita = 1
{
	diff = angle_difference(270,image_angle)
    image_angle+=clamp(.7*diff,-spd,spd)
}
if esquerda = 1
{
	diff = angle_difference(90,image_angle)
    image_angle+=clamp(.7*diff,-spd,spd)
}


#endregion
#region Gerador de flechas
/*
AVISO, essa parte tá em desenvolvimento, ela é responsável pela geração aleatória de setas para os 4 lados
é possível que tudo aqui mude, então os comentários podem não estar relacionado ao código no futuro
*/
 //coloca o script gerador_de_flecha no código, ainda não sei direito como funciona, mas iss faz com que as variáveis sejam compartilhadas

if keyboard_check(vk_enter)
{
	comecar = 1
}
if comecar = 1
{
	if instance_exists(flecha_obj) = 0 //isso indentifica se o objeto de flecha existe, se não existe, então...
		{
			existe = 0 //dá o valor de false para a variável "existe"
			lugar = 0
		}else //se não, ou seja, se existe, então...
		{
			existe = 1 //dá o valor de true para a variável "existe"
		}
/*Aqui em baixo está o gerador que vai criar flechas aleatórias em 4 posições da room
as variáveis lugar representam um lugar no mapa, sendo elas 
lugar = 1, 2, 3 = direita
lugar = 4, 5, 6 = baixo
lugar = 7, 8, 9 = esquerda
lugar = 10, 11, 12 = cima
*/
	if lugar = 0 //se lugar for igual a zero, ou seja, não tenha lugar spawnando flecha, então...
		{
			randomize() //isso vai randomizar esse código toda vez que o jogo iniciar, já que o código random_range randomiza um número, mas sempre que o programa iniciar, o primeiro valor sempre será o mesmo
			numero = random_range(1, 12)// cria um valor aleatório entre 1 e 4 e armazena em decimal na variável "numero"
			lugar = round(numero) //o comando round vai pegar o valor em decimal e transformar para inteiro, após isso armazena na variável "lugar", mudando a condição do if e travando ele
		}

	if existe = 0 and lugar = 1  //se o lugar for 1 na randomização acima e se a flecha não existir, então
		{
			instance_create_depth(640, 224, 1, flecha_obj) //criar uma flecha nas cordenadas 640x 224y, sendo a direita da room
		}
	if existe = 0 and lugar = 2  //mesma coisa acima porém para criar uma flecha a baixo, e por asism vai
		{
			instance_create_depth(320, 512, 1, flecha_obj)
		}
	if existe = 0 and lugar = 3
		{
			instance_create_depth(-32, 224, 1, flecha_obj)
		}
	if existe = 0 and lugar = 4
		{
			instance_create_depth(320, -32, 1, flecha_obj)
		}
	show_debug_message(lugar)
}
#endregion