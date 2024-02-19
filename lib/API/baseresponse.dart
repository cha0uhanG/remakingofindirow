
class BaseResponse {
  BaseResponse({
    this.status,
    this.code,
    this.data,
    this.message,
    this.error,
  });

  int? status;
  int? code;
  dynamic data;
  String? message;
  String? error;

  ///This is to verify whether the response is success or failure.
  bool get success => status == 0 ? false : true;


  factory BaseResponse.fromJson(Map<String, dynamic> json) => BaseResponse(
    status: json["status"],
    code: json["code"],
    data: json["data"],
    message: json["message"],
    error: json["error"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "code": code,
    "data": data.toJson(),
    "message": message,
    "error": error,
  };
}