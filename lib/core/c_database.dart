import 'package:caroby/caroby.dart';
import 'package:pet/core/models/m_pet.dart';

class CDatabase {
  CDatabase._();

  static final List<MPet> _pets = [
    MPet(
        id: "1",
        name: "Mike",
        breed: "Pitbull",
        description: "Here a description about the pet!",
        location: "Riga LV"),
    MPet(
        id: "2",
        name: "Mike",
        breed: "Pitbull",
        description: "Here a description about the pet!",
        location: "Riga LV"),
    MPet(
        id: "3",
        name: "Mike",
        breed: "Pitbull",
        description: "Here a description about the pet!",
        location: "Riga LV"),
    MPet(
        id: "4",
        name: "Mike",
        breed: "Pitbull",
        description: "Here a description about the pet!",
        location: "Riga LV"),
    MPet(
        id: "5",
        name: "Mike",
        breed: "Pitbull",
        description: "Here a description about the pet!",
        location: "Riga LV"),
    MPet(
        id: "6",
        name: "Mike",
        breed: "Pitbull",
        description: "Here a description about the pet!",
        location: "Riga LV"),
  ];

  static Future<List<MPet>> getPets() async {
    await Future.delayed(2000.toDuration);

    return _pets;
  }
}
