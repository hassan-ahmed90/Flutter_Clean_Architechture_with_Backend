class AppExeption implements Exception{

  final _messege;
  final _prefix;

  AppExeption([this._messege,this._prefix]);
  String toString(){
    return '$_messege$_prefix';
  }
}

class FetchDataException extends AppExeption{
  FetchDataException([String? messege]):super(messege,"Error during communicataion");
}
class BadRequestException extends AppExeption{
  BadRequestException([String? messege]):super(messege,"Invalid Reques");
}
class UnauthorizedException extends AppExeption{
  UnauthorizedException([String? messege]):super(messege,"Unauthorized access");
}
class InvalidInputException extends AppExeption{
  InvalidInputException  ([String? messege]):super(messege,"Invalid Input");
}
