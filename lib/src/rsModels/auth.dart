part of rsModels;

class AuthToken {
  final String _username;
  final String _password;

  get authToken => this._username + ":" + this._password;

  get username => _username;
  get password => _password;

  AuthToken(this._username, this._password);
  @override
  String toString() => this.authToken;
}
