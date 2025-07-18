void main() {
  int? age = null;

  // double ageDouble = age.toDouble(); error

  if (age != null) {
    double ageDouble = age.toDouble();
    print(age);
  }

  // konversi nullable ke non nullable
  String name = 'Dokja';
  String? nullableName = name;

  int? nullableCount = null;
  // int count = nullableCount; error
  if (nullableCount != null) {
    int count = nullableCount;
  }

  // kode panjangnya gini
  String? guest;
  String guestName;

  if (guest != null) {
    guestName = guest;
  } else {
    guestName = 'Guest';
  }

  print(guestName); // Guest
  // Default Value
  // var guestName = guest ?? 'Guest';

  // ternary operator
  // String guestName = guest != null ? guest : 'Guest';

  // konversi secara paksa
  int? nullableNumber;
  int nonNullableNumber =
      nullableNumber!; // paksa bisa tapi konsekuensi nya error di terminalnya kalo ternyata null
  // error
  //   Null check operator used on a null value
  // #0      main (file:///e:/VsCode/GitHub/Programming-Language/Dart/code/dart_basic/bin/22_null_safety.dart:40:41)
  // #1      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:315:19)
  // #2      _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:194:12)

  // akses nullable member
  int? dataInt;
  double? dataDouble = dataInt?.toDouble();

  // if (dataInt != null) {
  //   dataDouble = dataInt.toDouble();
  // }


}
