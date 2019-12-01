Este é um repositório para uma das salas de DOJO do evento [Dia de Codar 2/2019](https://www.sympla.com.br/dia-de-codar-22019__685351).

Escolhi fazer o desafio dessa vez d

# Campo Minado

Exercício extraído de http://dojopuzzles.com/problemas/exibe/campo-minado/.

## O problema

Você já jogou Campo Minado? É um pequeno jogo que vem instalado em um certo Sistema Operacional cujo nome não conseguimos lembrar. O objetivo deste jogo é encontrar onde estão todas as minas em um campo de tamanho MxN (M e N inteiros). Para te ajudar, para cada posição, o jogo exibe o número de minas que são adjacentes a ela.

Por exemplo, suponha o seguinte campo 4x4 com 2 minas (representadas pelo caractere \*):

```
* . . .
. . . .
. * . .
. . . .
```

Representando o mesmo campo, colocando os números de dicas como descrito acima, teremos:

```
* 1 0 0
2 2 1 0
1 * 1 0
1 1 1 0
```

Como você pode perceber, cada quadrado pode ter até 8 quadrados adjacentes.

Sua tarefa é, dado a definição de um campo (definido por suas dimensões e pelo posicionamento das minas), retornar o mesmo campo com as indicações de números de minas adjacentes em cada posição que não contenha uma mina.
