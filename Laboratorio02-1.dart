class MarvelHeroes {
  final String nombrePila;
  final String nombrePersonaje;

  MarvelHeroes({required this.nombrePila, required this.nombrePersonaje});

  void presentacion() {
    print(
        "Hola, mi nombre es $nombrePila pero me conocen como $nombrePersonaje");
  }
}

void main() {
  var spiderman =
      MarvelHeroes(nombrePila: "Peter Parker", nombrePersonaje: "Spiderman");

  spiderman.presentacion();
}

class DcHeroes {
  late String nombrePila;
  late String nombrePersonaje;

  DcHeroes.fromDcJson(Map<String, String> dcJson) {
    nombrePila = dcJson['nombrePila'] ?? "No tiene nombre";
    nombrePersonaje = dcJson['nombrePersonaje'] ?? "No tiene alias";

    if (nombrePila == "No tiene nombre" ||
        nombrePersonaje == "No tiene alias") {
      print("Algo esta incompleto.");
    }
  }

  void main() {
    Map<String, String> dcJson = {
      'nombrePila': 'Bruce Wayne',
      'nombrePersonaje': 'Batman',
    };

    var batman = DcHeroes.fromDcJson(dcJson);
    var batman2 = DcHeroes.fromDcJson(dcJson);
    batman.presentacion();
    batman2.presentacion();
  }

  void presentacion() {
    print(
        "Hola, mi nombre es $nombrePila pero me conocen como el caballero de la noche $nombrePersonaje");
  }
}
