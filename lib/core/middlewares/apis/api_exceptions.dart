class AppException implements Exception {
  final String? message;
  final String? prefix;
  final int? code;

  AppException([this.message, this.prefix, this.code]);

  @override
  String toString() {
    return "$message";
  }
}

class FetchDataException extends AppException {
  FetchDataException([message, int? code])
      : super(message, "Error During Communication: ", code);
}

class BadRequestException extends AppException {
  BadRequestException([message, int? code])
      : super(message, "Invalid Request: ", code);
}

class UnauthorisedException extends AppException {
  UnauthorisedException([message, int? code])
      : super(message, "Unauthorised Request: ", code);
}

class InvalidInputException extends AppException {
  InvalidInputException([message, int? code])
      : super(message, "Invalid Input: ", code);
}

class InvalidPermissionException extends AppException {
  InvalidPermissionException([message, int? code])
      : super(message, "Invalid permission: ", code);
}

class UnsupportedTypeException extends AppException {
  UnsupportedTypeException([message, int? code])
      : super(message, "Unsupport Type Request: ", code);
}
