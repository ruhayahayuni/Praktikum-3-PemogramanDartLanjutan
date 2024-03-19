void main(List<String> args) {
  print(2 is int);
  print(2 is num);
  print(2 is! String);
  print([1, 2, 3] is Map);

  num? a = 9, b = 10; // Declare a and b as nullable
  print((a as int?)?.isOdd);
  print((a as int?)?.isEven);

  int maks = (a != null && b != null) ? (a > b ? a.toInt() : b.toInt()) : 0;
  print('Nilai max dari $a dan $b adalah $maks');
  
  a = null;
  int c = a != null ? a.toInt() : b.toInt(); // Use a conditional expression to handle the nullable value
  print('Nilai c: $c');
}
