import 'dart:math';

import 'package:dart_oop/models/rang.dart';

class Car {
  //Constructor
  Car.withValues(
      {int? numberOfTyre, this.tripDistance = 0, required this.color})
      : shomareShasi = Random().nextInt(1000000),
        _numberOfTyres = ((numberOfTyre ?? 2) % 2 == 0 ? numberOfTyre : 40) {
    print(
        "The car is instantiated with Color : ${this.color} and ShomareShasi :"
        " ${this.shomareShasi}");
  }

  Car.withValues2(
      {int? numberOfTyre, this.tripDistance = 0, required this.color})
      : shomareShasi = Random().nextInt(1000000),
        _numberOfTyres = ((numberOfTyre ?? 2) % 2 == 0 ? numberOfTyre : 40) {
    print(
        "The car is instantiated with Color : ${this.color} and ShomareShasi  2 :"
        " ${this.shomareShasi}");
  }

  Car()
      : tripDistance = 3,
        shomareShasi = 2,
        color = Rang.green {}

  //Fields
  int? _numberOfTyres;
  int? _numberOfDoors;
  int tripDistance;
  int shomareShasi;
  Rang color;

  int chandBarMaBeNumberOfTyresDastresyDashtim = 0;

  //Properties
  int? get numberOfTyres {
    print('numberOfTyres is once accessed! ${DateTime.now()}');
    return _numberOfTyres;
  }

  set numberOfTyres(int? value) {
    _numberOfTyres = value;
  }

  //Methods
  void boroJelo(int meghdareGaz) {
    this.tripDistance += 10 * meghdareGaz;
    print(
        "ماشین با شماره شاسی ${this.shomareShasi} دارد با مقدار گاز ${meghdareGaz} جلو می‌رود");
  }

  void shisheBiaPaiyn([int? taKoja, int koodomShishe = 1, int kei = 0]) {
    print("${taKoja} ${koodomShishe} ${kei} ${_numberOfTyres}");
    // this.tripDistance += 10 * meghdareGaz;
  }
}

class Pride extends Car {
  Pride()
      : /*type = PrideType.p142,*/
        super.withValues(color: Rang.white, numberOfTyre: 4);

  Pride.withColor(this.type, {Rang color = Rang.white})
      : super.withValues(color: color /*?? Rang.white*/);

  PrideType type;

  @override
  int? get numberOfTyre => _numberOfTyres;

  @override
  set numberOfTyre(int? value) => _numberOfTyres = value;
}

enum PrideType { p131, p142, pSaina }
