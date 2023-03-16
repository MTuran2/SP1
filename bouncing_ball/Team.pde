//Lav et team, der har "setColor" funktionen og "getColor" som funktion og sætter det ind.

class Team {
  String tName;
  color c1;
  color c2;

  Team(String teamName, color a, color b) {
  tName = teamName;
  c1 = a;
  c2 = b;

  }
  
color[] getColor() {
  color[] colors = {c1,c2};
  return colors;
 }
  
}
