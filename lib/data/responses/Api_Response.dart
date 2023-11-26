import 'package:mvvm_provider/data/responses/status.dart';

class ApiResponse<T>{
  Status? status;
  T? data;
  String? messege;

  ApiResponse(this.status,this.messege,this.data);
  ApiResponse.loading(): status=Status.LOADING;
  ApiResponse.completed(): status=Status.COMPLETED;
  ApiResponse.error(): status=Status.ERROR;

  String toSrtring(){
    return "Status : $status \n Data : $data \n Messege: $messege";
  }
}