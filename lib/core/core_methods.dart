responsiveResizer(var size, var ratio) {
  return size * (ratio / 100);
}

//Email,Şifre ve alan validasyonlarını sağlayan fonksiyonlar
bool? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    if (value!.isEmpty || !regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
}

bool? validatePassword(String value) {
    if (value.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  bool? validateTextField(String value) {
    if (value.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  String parseDateTime(String dateTimeString) {
  int year = int.parse(dateTimeString.substring(0, 4));
  int month = int.parse(dateTimeString.substring(4, 6));
  int day = int.parse(dateTimeString.substring(6, 8));

  return "$day/$month/$year";
}