//aqui vai indicar qual sprite vai ser trocado quando os dois objetos se colidirem
if global.lifes = 3 { //se a vida estiver com 3
draw_sprite(life_spt,3,150,100)// entao o esprite de numero 3 aparecera no X e y indicado (o X e Y pode sem alterados, mas as outras linha de bixo tabvem vao preciter ter o seu valor alterado)
}
if global.lifes = 2 {
draw_sprite(life_spt,2,150,100)//aqui o caminho e mesmo, o sprite começa com 0 e vai ate o seu fim, aqui no caso vai de 0 a 3 ja que foi tanto de sprites utilizado para fazer a vida(sempre da esquerda para a direita)
}
if global.lifes = 1 {
draw_sprite(life_spt,1,150,100)// ""
}
if global.lifes = 0 {
draw_sprite(life_spt,0,150,100)// aqui a vida chega em zero (mas tarde podes colocar uma tela de game over qundo esse numero chegar em zero ultilizando o global.life)
}