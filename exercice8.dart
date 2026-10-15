class Livre {
  String titre;
  String auteur;

  int _pages = 200;

  static int totalLivres = 0;

  Livre(this.titre, this.auteur) {
    totalLivres++;
  }

  int get pages => _pages;

  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur");
  }

  static void afficherTotal() {
    print("Nombre total de livres : $totalLivres");
  }
}

void main() {
  var l1 = Livre("Le Petit Prince", "Omar");
  var l2 = Livre("la musique", "ouail");

  l1.afficherInfos();
  l2.afficherInfos();

  print("Pages de l1 : ${l1.pages}");

  var r1 = Roman("1984", "George Orwell", "Dystopie");
  var r2 = Roman("Les Misérables", "Victor Hugo", "Roman historique");

  r1.afficherInfos();
  r2.afficherInfos();

  Livre.afficherTotal();
}

class Roman extends Livre {
  String genre;

  Roman(super.titre, super.auteur, this.genre);

  void afficherGenre() {
    print("Genre: $genre");
  }

  @override
  void afficherInfos() {
    super.afficherInfos();
    afficherGenre();
  }
}