class MacrosEntity {
  int calories;
  int protien;
  int fat;
  int carbs;

  MacrosEntity({
    required this.calories,
    required this.protien,
    required this.fat,
    required this.carbs,
  });

  Map<String, Object?> toDocument() {
    return {
      'calories': calories,
      'protien': protien,
      'fat': fat,
      'carbs': carbs
    };
  }

  static MacrosEntity fromDocument(Map<String, dynamic> doc) {
    return MacrosEntity(
        calories: doc['calories'],
        protien: doc['protien'],
        fat: doc['fat'],
        carbs: doc['carbs']);
  }
}
