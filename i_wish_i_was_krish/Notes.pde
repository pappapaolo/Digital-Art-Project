/*

steps for the windows:

allora.

devi:
abbiamo la lunghezza e la larghezza
puoi fare che il numero di finestre è 
float nnFinerstre = ((lunghezza) / (window height + gap))- 1
int nFinerste = (int) Math.floor(nnFinestre);
10 cm le finestre sono da 1 cm piu 1 cm di distanza
10/2 = 5-1


allora. per fare le cordicelle:
Var con gli ultimi tre punti dove hai toccato
int lastClick1
int lastClick2
int lastClick3

lastClick3 = lastClick2
lastClick2 = lastClick1
lastClick1 = (mouseX, mouseY)


int[] position = new int[2];

// ...

// In the mousePressed() event handler, get the x and y coordinates of the click
// and store them in the position array
public void mousePressed(MouseEvent e) {
  position[0] = e.getX();
  position[1] = e.getY();
}
*/
