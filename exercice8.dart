class Livre {
  String titre;
  String auteur;
  int _pages;

  static int totalLivres = 0;

  Livre(this.titre, this.auteur, [this._pages = 0]) {
    totalLivres++;
  }
