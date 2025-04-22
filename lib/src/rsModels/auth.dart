import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';
// No .g.dart as there was no initial fromJson/toJson

@freezed
class AuthToken with _$AuthToken {
  // Factory constructor for the main instance
  // Fields were 'final' so they become 'required'
  const factory AuthToken(
    String username,
    String password,
  ) = _AuthToken;
  // Private constructor required by freezed
  const AuthToken._();

  // Custom getter
  String get authToken => '$username:$password';

  // Custom toString (will potentially be overridden by freezed's,
  // but can be kept here if this exact format is preferred)
  // If this specific format is *really* desired, override it:
  // @override
  // String toString() => authToken;
  // Otherwise, let freezed generate its toString() which includes all fields.
  // For now, let's let freezed generate its own.
}
