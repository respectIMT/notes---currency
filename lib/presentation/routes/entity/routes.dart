import 'coordinate.dart';

class Routes implements Coordinate {
  const Routes._({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;

  static const home = Routes._(
    name: 'home',
    path: '/home',
  );
  static const currency = Routes._(
    name: 'currency',
    path: '/currency',
  );
  static const note = Routes._(
    name: 'note',
    path: '/notes',
  );

  @override
  String toString() => 'name=$name, path=$path';
}
