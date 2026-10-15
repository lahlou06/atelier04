class Tache {
  String description;

  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++;
  }
}

void main() {
  Tache t1 = Tache("Faire les repetitions");
  Tache t2 = Tache("Eudier pour l'examen");
  Tache t3 = Tache("Preparer ton programme");

  print("Nombre total de taches : ${Tache.nombreTotal}");
}