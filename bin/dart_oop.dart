import 'package:dart_oop/models/car.dart';
import 'package:dart_oop/models/rang.dart';

void main() async {
  Car mainCar = Car.withValues(color: Rang.green);
  mainCar.numberOfTyres = 3;
  print(mainCar.numberOfTyres);

  var p = Pride(PrideType.p131,2,3);
  print(p.type);

  p.numberOfTyre = 8;
  print(p.numberOfTyre);

  // mainCar.tripDistance = -100;
  // // mainCar.
  // print(mainCar.tripDistance ?? 0 + 2);
}