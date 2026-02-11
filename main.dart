class Persona {
  String nombre;
  int edad;
  String profesion;

  Persona(this.nombre, this.edad, this.profesion);

  Persona.fromJson(Map<String, dynamic> json)
    : nombre = json['nombre'],
      edad = json['edad'],
      profesion = json['profesion'];

  void imprimirInfo() {
    print("Nombre: $nombre, Edad: $edad, Profesión: $profesion");
  }

  void saludar() {
    print("Hola, mi nombre es $nombre.");
  }

  void cambiarProfesion(String nuevaProfesion) {
    profesion = nuevaProfesion;
    print("Ahora mi nueva profesión es $profesion");
  }

  void despedirse() => print("Adiós desde Dart 👋");

  int calcularEdadEnAnios(int aniosExtra) => edad + aniosExtra;
}
void main() {
  Persona persona1 = Persona("D'Andre Boston", 25, "Ingeniero");
  persona1.imprimirInfo();
  persona1.saludar();
  persona1.cambiarProfesion("Desarrollador");
  persona1.despedirse();

  int edadFutura = persona1.calcularEdadEnAnios(5);
  print("Edad en 5 años: $edadFutura");

  print("--------------------------------");

  Map<String, dynamic> jsonData = {
    "nombre": "Ryan",
    "edad": 29,
    "profesion": "Profesor",
  };

  Persona persona2 = Persona.fromJson(jsonData);
  persona2.imprimirInfo();
}
