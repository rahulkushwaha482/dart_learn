void main() {
  String name = 'rahul';
  var dd = true;
  print(name.runtimeType);
  print(name is bool);

  print(dd.runtimeType);

  var str1 = 'String using single quote';
  var str2 = "String using Double quote";
  var str3 = 'It\'s rahul';
  var str4 = "it's rahul";

  print(str1);
  print(str2);
  print(str3);
  print(str4);

// row string . Special characher like new line character don't work
  var s = r'Hi I am rahul \n kushwaha';
  print(s);

  /// Multiline string

  var strNew = ''' Hi am Rahul Kushwaha.
             I am from Nepal.''';

  var strNew2 = """    Hi I am Rahul kushwaha
                how are you """;

  print(strNew);
  print(strNew2);
}
