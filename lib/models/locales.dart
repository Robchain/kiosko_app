class Local{
  String nombre;
  String tiempo;
  String imagenPath;
  String rating;

Local({
  required this.nombre,
  required this.tiempo,
  required this.imagenPath,
  required this.rating
});

  String get _nombre => nombre;

  String get _tiempo => tiempo;

  String get _imagenPath => imagenPath;

  String get _rating => rating;

}