class ErrorModel {
  final int code;
  final String message;

  ErrorModel({required this.code, required this.message});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      code: json['error']['code'] ?? 0,
      message: json['error']['message'] ?? 'Unknown error',
    );
  }
}