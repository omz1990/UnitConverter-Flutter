
class Unit {
  final String name;
  final double conversion;

  const Unit(this.name, this.conversion);

  Unit.fromJson(Map jsonMap) :
        name = jsonMap['name'],
        conversion = jsonMap['conversion'];
}