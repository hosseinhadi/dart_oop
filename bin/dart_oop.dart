import 'package:dart_oop/models/car.dart';
import 'package:dart_oop/models/rang.dart';

//2: Mohammad Erfan
//3: Vesal
void main() async {
  Car mainCar = Car.withValues(color: Rang.green);
  mainCar.numberOfTyres = 3;
  print(mainCar.numberOfTyres);

  var p = Pride(PrideType.pSaina,2,8);
  print(p.type);


  p.numberOfTyre = 4;
  print(p.numberOfTyre);
  print(p.shomareShasi);


  // mainCar.tripDistance = -100;
  // // mainCar.
  // print(mainCar.tripDistance ?? 0 + 2);
}
