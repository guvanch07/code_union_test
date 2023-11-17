sealed class Result<S, E extends Exception> {
  const Result();
}

final class Success<S, E extends Exception> extends Result<S, E> {
  const Success(this.value);
  final S value;
}

final class Failure<S, E extends Exception> extends Result<S, E> {
  const Failure(this.exception);
  final E exception;
}

class ApiException implements Exception {
  final int? statusCode;

  const ApiException(this.statusCode);

  String get apiMessage => switch (statusCode) {
        404 => 'Not Found',
        401 => 'Not Registered',
        422 => 'Bad request',
        //...
        _ => 'Internal server'
      };

  @override
  String toString() => 'FooException: $statusCode';
}
