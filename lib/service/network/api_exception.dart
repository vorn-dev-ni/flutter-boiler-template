class ApiException implements Exception {
 late final String message;
 late final int statusCode ;

 ApiException(this.message, this.statusCode);

 @override
  String toString() {
    // TODO: implement toString
      return super.toString();
  }
}