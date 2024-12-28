import '../entities/macros_entity.dart';

class Macros {
  int calories;
  int protien;
  int fat;
  int carbs;

  Macros({
    required this.calories,
    required this.protien,
    required this.fat,
    required this.carbs,
  });

  MacrosEntity toEntity() {
    return MacrosEntity(
        calories: calories, protien: protien, fat: fat, carbs: carbs);
  }

  static Macros fromEntity(MacrosEntity entity) {
    return Macros(
        calories: entity.calories,
        protien: entity.protien,
        fat: entity.fat,
        carbs: entity.carbs);
  }
}
